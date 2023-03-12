using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Hatchet : MonoBehaviour
{
    [SerializeField] private GameObject _parentObject;    
    private int _playerHealth { get; set; }
    
    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.TryGetComponent(out PoppyFlower poppyFlower) && other != _parentObject) 
            PickUpFlower(other.gameObject);
        if (other.gameObject.TryGetComponent(out EnemyController enemyController) && other != _parentObject)
            DamageEnemy(other.gameObject);
        if (other.gameObject.TryGetComponent(out PlayerFinder playerFinder) && other != _parentObject)
            DamagePlayer(other.gameObject);
    }


    private void DamagePlayer(GameObject other)
    {
        if (!other.gameObject.TryGetComponent(out PlayerFinder playerFinder)
            && !other.gameObject.TryGetComponent(out PlayerControllerDrug playerController1)) return;
        PlayerControllerDrug playerController = other.GetComponent<PlayerControllerDrug>();
        playerController.playerHealth = playerController.playerHealth - 1;
        Debug.Log("Player health " + playerController.playerHealth);
        if (playerController.playerHealth <= 0)
        {
            Debug.Log("Player died" + playerController.playerHealth);
            playerController.IsAlive = false;
            other.GetComponent<Animator>().SetBool("IsAlive", playerController.IsAlive);
            playerController.OnDeath.Invoke();
        }
    }
    private void PickUpFlower(GameObject other)
    {
        Debug.Log("Picked up flower");
        other.SetActive(false);
    }

    private void DamageEnemy(GameObject other)
    {
        if (!other.gameObject.TryGetComponent(out EnemyController enemyController)) return;
        Debug.Log("Killed enemy");
        enemyController.IsAlive = false;
        other.GetComponent<Animator>().SetBool("IsAlive", enemyController.IsAlive);
        enemyController.OnDeath.Invoke();
    }

    public void ToggleTrigger()
    {
        this.gameObject.GetComponent<Collider>().isTrigger = !this.gameObject.GetComponent<Collider>().isTrigger;
    }
}
