using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Hatchet : MonoBehaviour
{
    [SerializeField] private GameObject _parentObject;
    private Collider _collider => GetComponent<Collider>();
    private int _playerHealth { get; set; }
    
    private void OnTriggerEnter(Collider other)
    {
        //if(other.gameObject.TryGetComponent(out PoppyFlower poppyFlower) && other != _parentObject) 
        //    PickUpFlower(other.gameObject);
        if (other.gameObject.TryGetComponent(out EnemyController enemyController) && other != _parentObject)
            DamageEnemy(other.gameObject);
        if (other.gameObject.TryGetComponent(out PlayerFinder playerFinder) && other != _parentObject)
            DamagePlayer(other.gameObject);
    }


    private void DamagePlayer(GameObject other)
    {
        //check to see if it is the player getting damaged by looking for the empty PlayerFinder component
        if (!other.gameObject.TryGetComponent(out PlayerFinder playerFinder)
            && !other.gameObject.TryGetComponent(out PlayerControllerDrug playerController1)) return;
        PlayerControllerDrug playerController = other.GetComponent<PlayerControllerDrug>();

        //invokes the unity function on the victim. this function will be called when the victim gets damaged
        playerController.OnGetDamaged.Invoke();
        playerController.playerHealth = playerController.playerHealth - 1;
        Debug.Log("Player health " + playerController.playerHealth);

        //if the players health is less than or equal to 0 it invokes the death unity event
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
        //check to see if the target is an enemy by looking for the enemy controller script
        if (!other.gameObject.TryGetComponent(out EnemyController enemyController)) return;
        Debug.Log("Killed enemy");
        //sets the animation trigger and calls the on death unity event
        enemyController.IsAlive = false;
        other.GetComponent<Animator>().SetBool("IsAlive", enemyController.IsAlive);
        enemyController.OnDeath.Invoke();
    }

    //toggles the trigger of the hatchet on and off.
    public void ToggleTrigger()
    {
        _collider.enabled = !_collider.enabled;
        this.gameObject.GetComponent<Collider>().isTrigger = !this.gameObject.GetComponent<Collider>().isTrigger;
    }
}
