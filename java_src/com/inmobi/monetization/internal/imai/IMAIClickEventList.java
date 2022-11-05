package com.inmobi.monetization.internal.imai;

import com.inmobi.commons.internal.Log;
import com.inmobi.monetization.internal.Constants;
import com.inmobi.monetization.internal.configs.Initializer;
import com.inmobi.monetization.internal.imai.db.ClickData;
import com.inmobi.monetization.internal.imai.db.ClickDatabaseManager;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class IMAIClickEventList extends ArrayList<ClickData> {
    private static final long serialVersionUID = -211778664111073467L;

    public static synchronized IMAIClickEventList getLoggedClickEvents() {
        IMAIClickEventList iMAIClickEventList;
        synchronized (IMAIClickEventList.class) {
            iMAIClickEventList = null;
            if (ClickDatabaseManager.getInstance().getNoOfEvents() != 0) {
                int i = Initializer.getConfigParams().getImai().getmDefaultEventsBatch();
                ClickDatabaseManager.getInstance().setDBLimit(Initializer.getConfigParams().getImai().getmMaxDb());
                IMAIClickEventList clickEvents = ClickDatabaseManager.getInstance().getClickEvents(i);
                ArrayList<Long> arrayList = new ArrayList<>();
                Iterator<ClickData> it = clickEvents.iterator();
                while (it.hasNext()) {
                    arrayList.add(Long.valueOf(it.next().getClickId()));
                }
                ClickDatabaseManager.getInstance().deleteClickEvents(arrayList);
                iMAIClickEventList = clickEvents;
            }
            if (iMAIClickEventList == null) {
                iMAIClickEventList = new IMAIClickEventList();
            }
        }
        return iMAIClickEventList;
    }

    public void saveClickEvents() {
        Log.internal(Constants.LOG_TAG, "Save ping events");
        if (RequestResponseManager.mDBWriterQueue != null && !RequestResponseManager.mDBWriterQueue.isEmpty()) {
            Iterator<ClickData> it = RequestResponseManager.mDBWriterQueue.iterator();
            while (it.hasNext()) {
                ClickDatabaseManager.getInstance().insertClick(it.next());
            }
        }
    }

    public ClickData getClickEvent(long j) {
        try {
            Iterator<ClickData> it = iterator();
            while (it.hasNext()) {
                ClickData next = it.next();
                if (next.getClickId() == j) {
                    return next;
                }
            }
            return null;
        } catch (Exception e) {
            Log.internal(Constants.LOG_TAG, "Cant get click event", e);
            return null;
        }
    }

    public synchronized boolean removeClickEvent(long j) {
        boolean z = false;
        synchronized (this) {
            try {
                RequestResponseManager.isSynced.set(false);
                remove(getClickEvent(j));
                z = true;
            } catch (Exception e) {
                Log.internal(Constants.LOG_TAG, "Cant remove click event", e);
            }
        }
        return z;
    }

    public synchronized void reduceRetryCount(int i) {
        try {
            RequestResponseManager.isSynced.set(false);
            ClickData clickEvent = getClickEvent(i);
            int retryCount = clickEvent.getRetryCount();
            removeClickEvent(i);
            if (retryCount > 1) {
                clickEvent.setRetryCount(clickEvent.getRetryCount() - 1);
                add(clickEvent);
            }
        } catch (Exception e) {
            Log.internal(Constants.LOG_TAG, "Cant reduce retry count", e);
        }
    }
}
