using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.InputSystem;


// sends input from PlayerInput to attached CharacterMovement components
public class PlayerControllerDrug : MonoBehaviour
{
    public UnityEvent OnDeath;
    public UnityEvent OnGetDamaged;
    // initial cursor state
    [SerializeField] protected CursorLockMode _cursorMode = CursorLockMode.Locked;
    // make character look in Camera direction instead of MoveDirection
    [SerializeField] protected bool _lookInCameraDirection;
    public GameObject _hatchet;
    protected CharacterMovementBaseDrug _characterMovement;
    protected Vector2 _moveInput;
    private Animator _animator;
    public bool IsAlive = true;
    private GameObject _target;
    private float attackRange = 2f;
    public LayerMask _enemyLayer;
    public LayerMask _flowerLayer;
    public int playerHealth = 3;
    protected virtual void Awake()
    {
        _animator = GetComponent<Animator>();
        _characterMovement = GetComponent<CharacterMovementBaseDrug>();
        Cursor.lockState = _cursorMode;
    }

    public virtual void OnMove(InputValue value)
    {
        _moveInput = value.Get<Vector2>();
    }

    public virtual void OnJump(InputValue value)
    {
        _characterMovement?.TryJump();
    }

    public virtual void OnSprintStart()
    {
        _characterMovement?.StartSprint();
    }
    public virtual void OnSprintStop()
    {
        _characterMovement?.StopSprint();
    }

    public virtual void OnFire(InputValue value)
    {
            _characterMovement.CanMove = false;
            _animator.applyRootMotion = true;
            //_hatchet.GetComponent<Collider>().isTrigger = true;
            _animator.SetTrigger("Attack");
    }

    //these are animation events set on the actual attach animation
    void HitStart()
    {
        _hatchet.GetComponent<Hatchet>().ToggleTrigger();
    }
    void HitStop()
    {
        _hatchet.GetComponent<Hatchet>().ToggleTrigger();
    }

    //trigers the animation and functionality for slide
    public virtual void OnSlide(InputValue value)
    {
        _animator.SetTrigger("IsSliding");
        _characterMovement?.Slide(); 
    }
    public virtual void Update()
    {
        if (_characterMovement == null) return;
        if (playerHealth <= 0) OnDeath.Invoke();
        // find correct right/forward directions based on main camera rotation
        Vector3 up = Vector3.up;
        Vector3 right = Camera.main.transform.right;
        Vector3 forward = Vector3.Cross(right, up);
        Vector3 moveInput = forward * _moveInput.y + right * _moveInput.x;

        // send player input to character movement
        _characterMovement.SetMoveInput(moveInput);
        _characterMovement.SetLookDirection(moveInput);
        if (_lookInCameraDirection) _characterMovement.SetLookDirection(Camera.main.transform.forward);
    }

    //checks to see if the interaction volume is overlapping on a poppy flower
    private void OnTriggerEnter(Collider other)
    {
        Debug.Log("Stuff");
        if(other.gameObject.TryGetComponent(out PoppyFlower poppyFlower))
        {
            _animator.SetTrigger("PickUpFlower");
            other.gameObject.SetActive(false);
        }
    }
}
