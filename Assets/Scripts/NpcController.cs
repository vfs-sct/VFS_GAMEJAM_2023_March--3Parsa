using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NpcController : MonoBehaviour
{
    public bool testBool = false;
    public bool isHigh = false;
    public int _highInt;
    public Animator animator;

    private void OnValidate()
    {
        animator= GetComponent<Animator>();
    }
    private void Update()
    {
        if(testBool) { CustomerGotDrugs(); }
    }
    public int CalulateHighInt()
    {
        if (!isHigh) return 0;
        int highInt = Random.Range(1, 4);
        return highInt;
    }

    private void ToggleIsHigh()
    {
        isHigh= !isHigh;
    }
    public void CustomerGotDrugs()
    {
        ToggleIsHigh();
        CalulateHighInt();
        animator.SetBool("IsHigh", isHigh);
        animator.SetFloat("HighInt", _highInt);
    }
}
