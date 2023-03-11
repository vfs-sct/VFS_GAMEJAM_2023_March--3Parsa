using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Hatchet : MonoBehaviour
{    
    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.TryGetComponent(out PoppyFlower poppyFlower)) PickUpFlower(other.gameObject);
        if (other.gameObject.TryGetComponent(out EnemyController enemyController)) DamageEnemy(other.gameObject);
    }

    private void PickUpFlower(GameObject other)
    {
        Debug.Log("Picked up flower");
        other.SetActive(false);
    }

    private void DamageEnemy(GameObject other)
    {
        Debug.Log("Killed enemy");
        other.SetActive(false);
    }

    public void ToggleTrigger()
    {
        this.gameObject.GetComponent<Collider>().isTrigger = !this.gameObject.GetComponent<Collider>().isTrigger;
    }
}
