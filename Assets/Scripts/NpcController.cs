using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NpcController : MonoBehaviour
{
    public bool isHigh = false;
    public int highInt;
    private Animator _animator;

    private void OnValidate()
    {
        _animator= GetComponent<Animator>();
    }

    private void Update()
    {
        ToggleIsHigh();
        CalulateHighInt();
        _animator.SetBool("IsHigh", isHigh);
        _animator.SetFloat("HighInt", CalulateHighInt());
    }

    private int CalulateHighInt()
    {
        highInt = Random.Range(1, 4);
        return highInt;
    }

    private void ToggleIsHigh()
    {
        isHigh= !isHigh;
    }
}
