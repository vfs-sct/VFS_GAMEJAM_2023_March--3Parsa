using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ToggleFloor : MonoBehaviour
{    
    public GameObject toggleObject;
    private Rigidbody _rb;
    
    /// <summary>
    /// Causes platforms to fall if stepped on by a Player.
    /// </summary>
    private void OnTriggerEnter(Collider collider)
    {
        if (collider.gameObject.tag == "Player" && collider.TryGetComponent(out _rb))
        {
            // Debug.Log("Testing");
            _rb.useGravity = true;
        }
    }
}
