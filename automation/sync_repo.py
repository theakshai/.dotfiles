#!/usr/bin/env python3

import datetime
import os
import subprocess
import logging


calendar_map = {
    1: "Jan",
    2: "Feb",
    3: "Mar",
    4: "Apr",
    5: "May",
    6: "Jun",
    7: "Jul",
    8: "Aug",
    9: "Sep",
    10: "Oct",
    11: "Nov",
    12: "Dec",

}

DIR_PATH = "/Users/akshai/presidio/MEMIC/daily-work-log"


def change_directory():
    try:
        os.chdir(DIR_PATH)
        print(f"Changed directory to {DIR_PATH}")
    except Exception as e:
        print(f"Failed to change directory: {e}")
        raise


def add():
    cmd = ["git", "add", "."]
    try:
        response = subprocess.run(
            cmd, text=True, check=True, capture_output=True, cwd=DIR_PATH)
        if response.returncode == 0:
            print("Added the latest changes.")
    except subprocess.CalledProcessError as e:
        print(e)
    return True


def push():
    cmd = ["git", "push", "origin", "main"]
    try:
        response = subprocess.run(
            cmd, text=True, check=True, capture_output=True, cwd=DIR_PATH)
        if response.returncode == 0:
            print("Pushed to changes to the main branch")
    except subprocess.CalledProcessError as e:
        print(e)


def commit():
    current_datetime = (datetime.datetime.now())
    date = current_datetime.day
    month = calendar_map.get(current_datetime.month, 0)
    year = current_datetime.year
    commit_msg = f"feat: Work logging sync on {date} {month} {year}"

    cmd = ["git", "commit", "-m", f"{commit_msg}"]
    try:
        response = subprocess.run(
            cmd, text=True, check=True, capture_output=True, cwd=DIR_PATH)
        if response.returncode == 0:
            print(f"Commited with commit msg: {commit_msg}")
    except subprocess.CalledProcessError as e:
        print(e)
    return True


def main():
    change_directory()
    if add():
        if commit():
            push()


main()
