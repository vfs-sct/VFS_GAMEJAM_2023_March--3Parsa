using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class EnemyController : PlayerControllerDrug
{
    [SerializeField] private float _maxRange = 10f;
    [SerializeField] private float _minRange = 1f;

    [SerializeField] private CharacterMovementBaseDrug _playerMovement => _player.GetComponent<CharacterMovementBaseDrug>();
    [SerializeField] private CharacterMovementBaseDrug _enemyMovement;
    [SerializeField] private Animator _animator => GetComponent<Animator>();
    private NavMeshAgent _navMeshAgent;
    private Vector3 lookDirection;

    [SerializeField] private GameObject _player;

    [SerializeField] private float _distanceToTarget => Vector3.Distance(transform.position, _player.transform.position);

    private void OnValidate()
    {
        UpdateComponents();        
    }
    public override void Update()
    {
        DistanceCheck(_player.transform.position);
        MoveToPlayerPosition(_player.transform.position);
    }
    private void UpdateComponents()
    {
        _enemyMovement = GetComponent<CharacterMovementBaseDrug>();
        _navMeshAgent = GetComponent<NavMeshAgent>();         
    }

    public void MoveToPlayerPosition(Vector3 playerPosition)
    {
        if (DistanceCheck(playerPosition) > _maxRange) return;

        if(Vector3.Distance(transform.position, playerPosition) < _maxRange)
        {
            _enemyMovement.MoveTo(playerPosition);
        }

        if(DistanceCheck(playerPosition) < _minRange)
        {
            _enemyMovement.Stop();
            _animator.SetTrigger("Attack");
        }
    }
    
    public float DistanceCheck(Vector3 playerPosition)
    {
       float distance = Vector3.Distance(transform.position, playerPosition);
        return distance;
    }
    
}
