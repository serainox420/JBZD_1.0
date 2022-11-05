package com.inmobi.commons.analytics.iat.impl;

import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.inmobi.commons.analytics.iat.impl.Goal;
import com.inmobi.commons.analytics.iat.impl.config.AdTrackerEventType;
import com.inmobi.commons.analytics.iat.impl.config.AdTrackerInitializer;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.util.Iterator;
import java.util.Vector;
/* loaded from: classes2.dex */
public class GoalList extends Vector<Goal> {
    public static GoalList getLoggedGoals() {
        GoalList goalList = null;
        if (FileOperations.isFileExist(InternalSDKUtil.getContext(), AdTrackerConstants.IMGOAL_FILE)) {
            goalList = (GoalList) FileOperations.readFromFile(InternalSDKUtil.getContext(), AdTrackerConstants.IMGOAL_FILE);
        }
        if (goalList == null) {
            return new GoalList();
        }
        return goalList;
    }

    public void saveGoals() {
        FileOperations.saveToFile(InternalSDKUtil.getContext(), AdTrackerConstants.IMGOAL_FILE, this);
    }

    public Goal getGoal(String str) {
        if (str == null || "".equals(str.trim())) {
            Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "GoalName is null");
            return null;
        }
        try {
            Iterator<Goal> it = iterator();
            while (it.hasNext()) {
                Goal next = it.next();
                if (next.name.equals(str)) {
                    return next;
                }
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    public boolean removeGoal(String str, int i) {
        if (str == null || "".equals(str.trim())) {
            Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "GoalName is null");
            return false;
        } else if (i < 1) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "GoalCount cannot be 0 or negative");
            return false;
        } else {
            Iterator it = iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Goal goal = (Goal) it.next();
                if (goal.name.equals(str)) {
                    int i2 = goal.count - i;
                    if (str.equals(AdTrackerConstants.GOAL_DOWNLOAD)) {
                        remove(goal);
                    } else if (i2 <= 0) {
                        remove(goal);
                    } else {
                        goal.count = i2;
                    }
                }
            }
            return true;
        }
    }

    public boolean addGoal(String str, int i, long j, int i2, boolean z) {
        boolean z2;
        if (str == null || "".equals(str.trim())) {
            Log.debug(AdTrackerConstants.IAT_LOGGING_TAG, "Goal name is null");
            return false;
        } else if (i < 1 || j < 0) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "GoalCount cant be 0 or RetryTime cannot be negative");
            return false;
        } else {
            try {
                Iterator<Goal> it = iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z2 = false;
                        break;
                    }
                    Goal next = it.next();
                    if (next.name.equals(str)) {
                        if (Goal.State.REPORTING_REQUESTED == next.state) {
                            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "Attempt to update goal (" + next.name + ") while it is being reported to the server! Ignoring ... ");
                            return false;
                        }
                        if (!AdTrackerConstants.GOAL_DOWNLOAD.equals(str)) {
                            next.count += i;
                        }
                        next.retryCount = i2;
                        next.retryTime = j;
                        next.isDuplicate = z;
                        z2 = true;
                    }
                }
                if (!z2) {
                    add(new Goal(str, i, j, i2, z));
                }
                return true;
            } catch (Exception e) {
                return false;
            }
        }
    }

    public boolean increaseRetryTime(String str, int i, boolean z) {
        long j;
        if (str == null || "".equals(str.trim())) {
            Log.internal(AdTrackerConstants.IAT_LOGGING_TAG, "GoalName cannot be null");
            return false;
        }
        Goal goal = getGoal(str);
        if (goal == null) {
            return false;
        }
        int maxWaitTime = AdTrackerInitializer.getConfigParams().getRetryParams().getMaxWaitTime();
        int maxRetry = AdTrackerInitializer.getConfigParams().getRetryParams().getMaxRetry();
        long j2 = goal.retryTime;
        int i2 = goal.retryCount;
        if (j2 < maxWaitTime) {
            j = (j2 * 2) + NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS;
            if (j > maxWaitTime) {
                j = maxWaitTime;
            }
        } else {
            j = maxWaitTime;
        }
        int i3 = i2 + 1;
        goal.retryTime = j;
        goal.retryCount = i3;
        if (i3 >= maxRetry) {
            AdTrackerUtils.reportMetric(AdTrackerEventType.GOAL_DUMPED, goal, 0, 0L, 0, null);
        }
        return true;
    }
}
