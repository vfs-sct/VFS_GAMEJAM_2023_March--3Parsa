using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PoppyPointer : MonoBehaviour
{
    [SerializeField] private GameObject Arrow;
    [SerializeField] private GameObject Player;
    [SerializeField] public PoppyFlower[] _poppyLeftInScene;

    [SerializeField] private PoppyFlower _nearestPoppy { get; set; }
    private float _nearestDistance = Mathf.Infinity;
    private void OnValidate()
    {
    }
    private void Update()
    {
        _poppyLeftInScene = FindObjectsOfType<PoppyFlower>();
        if(_nearestPoppy == null) FindNearestFlower();
        Arrow.transform.LookAt(_nearestPoppy.transform.position);
    }

    public void FindNearestFlower()
    {
        _poppyLeftInScene = FindObjectsOfType<PoppyFlower>();
        foreach (PoppyFlower poppy in _poppyLeftInScene)
        {
            float distance = Vector3.Distance(transform.position, poppy.transform.position);
            if (distance < _nearestDistance)
            {
                _nearestDistance = distance;
                _nearestPoppy = poppy;
            }
        }
    }
}