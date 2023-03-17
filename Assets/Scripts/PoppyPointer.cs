using Sirenix.Utilities;
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

    public PoppyFlower _nearestPoppy;
    private float _nearestDistance = Mathf.Infinity;
    private void OnValidate()
    {
        FindPoppyInScene();
    }
    private void Update()
    {
        FindNearestFlower();
        //RotateArrow(_nearestPoppy);
        if(_poppyLeftInScene.Length <=0) Arrow.gameObject.SetActive(false);
    }

    public PoppyFlower FindNearestFlower()
    {
        FindPoppyInScene();
        foreach (PoppyFlower poppy in _poppyLeftInScene)
        {
            if (poppy.gameObject.activeSelf == false) continue;
            float distance = DistanceToPoppy(poppy);
            if (distance < _nearestDistance)
            {
                _nearestDistance = distance;
                _nearestPoppy = poppy;
            }
            RotateArrow(poppy);
        }
        return _nearestPoppy;
    }

    public PoppyFlower[] FindPoppyInScene()
    {
        _poppyLeftInScene = FindObjectsOfType<PoppyFlower>();
        return _poppyLeftInScene;
    }

    private float DistanceToPoppy(PoppyFlower poppy)
    {
        return Vector3.Distance(transform.position, poppy.transform.position);
    }

    public void RotateArrow(PoppyFlower poppyFlower)
    {
        _nearestPoppy = poppyFlower;
        Arrow.transform.LookAt(poppyFlower.transform.position);
        
    }

    public void OnFlowerPickup()
    {
        //Destroy(_nearestPoppy.gameObject);
        _nearestPoppy.gameObject.SetActive(false);
        _poppyLeftInScene = FindPoppyInScene();
        _nearestPoppy = FindNearestFlower();
    }
}