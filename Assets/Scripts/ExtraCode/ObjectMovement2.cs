using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectMovement2 : MonoBehaviour
{
    public GameObject[] waypoints;  // array of GameObjects
    int currentWP = 0;
    public float speed = 10.0f;
    public float rotSpeed = 10.0f;

    // Update is called once per frame
    void Update()
    {
        if (Vector3.Distance(this.transform.position, waypoints[currentWP].transform.position) < 3)  // if WP < 3,
        {
            currentWP++;
        }
        if (currentWP >= waypoints.Length) 
        {
            currentWP = 0;  // resets count
        }

        Quaternion LookatWP = Quaternion.LookRotation(waypoints[currentWP].transform.position - this.transform.position);  
        this.transform.rotation = Quaternion.Slerp(this.transform.rotation, LookatWP, rotSpeed * Time.deltaTime);

        this.transform.Translate(0, 0, speed * Time.deltaTime);  
    }
}
