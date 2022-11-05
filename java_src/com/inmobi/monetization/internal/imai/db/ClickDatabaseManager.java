package com.inmobi.monetization.internal.imai.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.inmobi.commons.db.ColumnData;
import com.inmobi.commons.db.DatabaseHandler;
import com.inmobi.commons.db.TableData;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.monetization.internal.Constants;
import com.inmobi.monetization.internal.imai.IMAIClickEventList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
/* loaded from: classes2.dex */
public class ClickDatabaseManager extends DatabaseHandler {
    public static final String COLUMN_CLICK_ID = "clickid";
    public static final String COLUMN_CLICK_URL = "clickurl";
    public static final String COLUMN_FOLLOW_REDIRECT = "followredirect";
    public static final String COLUMN_PINGWV = "pingwv";
    public static final String COLUMN_RETRY_COUNT = "retrycount";
    public static final String COLUMN_TIMESTAMP = "timestamp";
    public static final String TABLE_CLICK = "clickevent";

    /* renamed from: a  reason: collision with root package name */
    private static ClickDatabaseManager f3904a;
    private int b;

    protected ClickDatabaseManager(Context context, ArrayList<TableData> arrayList) {
        super(context, arrayList);
        this.b = 1000;
    }

    public static synchronized ClickDatabaseManager getInstance() {
        ClickDatabaseManager clickDatabaseManager;
        synchronized (ClickDatabaseManager.class) {
            try {
                if (f3904a == null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(a());
                    f3904a = new ClickDatabaseManager(InternalSDKUtil.getContext(), arrayList);
                }
                clickDatabaseManager = f3904a;
            } catch (Exception e) {
                Log.internal(Constants.LOG_TAG, "Exception getting DB Manager Instance", e);
                clickDatabaseManager = null;
            }
        }
        return clickDatabaseManager;
    }

    private static TableData a() {
        TableData tableData = new TableData();
        LinkedHashMap<String, ColumnData> linkedHashMap = new LinkedHashMap<>();
        ColumnData columnData = new ColumnData();
        columnData.setPrimaryKey(true);
        columnData.setDataType(ColumnData.ColumnType.INTEGER);
        columnData.setMandatory(true);
        linkedHashMap.put(COLUMN_CLICK_ID, columnData);
        ColumnData columnData2 = new ColumnData();
        columnData2.setDataType(ColumnData.ColumnType.VARCHAR);
        columnData2.setMandatory(true);
        linkedHashMap.put(COLUMN_CLICK_URL, columnData2);
        ColumnData columnData3 = new ColumnData();
        columnData3.setDataType(ColumnData.ColumnType.INTEGER);
        columnData3.setMandatory(true);
        linkedHashMap.put(COLUMN_PINGWV, columnData3);
        ColumnData columnData4 = new ColumnData();
        columnData4.setDataType(ColumnData.ColumnType.INTEGER);
        columnData4.setMandatory(true);
        linkedHashMap.put(COLUMN_FOLLOW_REDIRECT, columnData4);
        ColumnData columnData5 = new ColumnData();
        columnData5.setDataType(ColumnData.ColumnType.INTEGER);
        columnData5.setMandatory(true);
        linkedHashMap.put(COLUMN_RETRY_COUNT, columnData5);
        ColumnData columnData6 = new ColumnData();
        columnData6.setDataType(ColumnData.ColumnType.INTEGER);
        columnData6.setMandatory(true);
        linkedHashMap.put("timestamp", columnData6);
        tableData.setmColumns(linkedHashMap);
        tableData.setmTableName(TABLE_CLICK);
        return tableData;
    }

    public synchronized void insertClick(ClickData clickData) {
        try {
            open();
            ContentValues contentValues = new ContentValues();
            contentValues.put("timestamp", Long.valueOf(clickData.getTimestamp()));
            contentValues.put(COLUMN_CLICK_URL, clickData.getClickUrl());
            contentValues.put(COLUMN_PINGWV, Boolean.valueOf(clickData.isPingWv()));
            contentValues.put(COLUMN_RETRY_COUNT, Integer.valueOf(clickData.getRetryCount()));
            contentValues.put(COLUMN_FOLLOW_REDIRECT, Boolean.valueOf(clickData.isFollowRedirects()));
            if (getTableSize(TABLE_CLICK) >= this.b) {
                Cursor executeQuery = executeQuery("SELECT clickid FROM clickevent WHERE timestamp= (SELECT MIN(timestamp) FROM clickevent Limit 1);", null);
                executeQuery.moveToFirst();
                long j = executeQuery.getLong(0);
                executeQuery.close();
                delete(TABLE_CLICK, "clickid = " + j, null);
            }
            insert(TABLE_CLICK, contentValues);
            close();
        } catch (Exception e) {
            Log.internal(Constants.LOG_TAG, "Failed to insert click event to db", e);
        }
    }

    public synchronized IMAIClickEventList getClickEvents(int i) {
        IMAIClickEventList iMAIClickEventList;
        iMAIClickEventList = new IMAIClickEventList();
        try {
            open();
            Cursor nRows = getNRows(TABLE_CLICK, "timestamp", i);
            nRows.moveToFirst();
            do {
                ClickData clickData = new ClickData();
                clickData.setClickId(nRows.getLong(0));
                clickData.setClickUrl(nRows.getString(1));
                if (1 == nRows.getInt(2)) {
                    clickData.setPingWv(true);
                } else {
                    clickData.setPingWv(false);
                }
                if (1 == nRows.getInt(3)) {
                    clickData.setFollowRedirect(true);
                } else {
                    clickData.setFollowRedirect(false);
                }
                clickData.setRetryCount(nRows.getInt(4));
                clickData.setTimestamp(nRows.getLong(5));
                iMAIClickEventList.add(clickData);
            } while (nRows.moveToNext());
            nRows.close();
            close();
        } catch (Exception e) {
            Log.internal(Constants.LOG_TAG, "Failed to get clicks from db", e);
        }
        return iMAIClickEventList;
    }

    public synchronized boolean deleteClickEvents(ArrayList<Long> arrayList) {
        boolean z;
        if (arrayList != null) {
            try {
            } catch (Exception e) {
                Log.internal(Constants.LOG_TAG, "Exception deleting click events", e);
                z = false;
            }
            if (!arrayList.isEmpty()) {
                open();
                Iterator<Long> it = arrayList.iterator();
                while (it.hasNext()) {
                    delete(TABLE_CLICK, "clickid = " + it.next().longValue(), null);
                }
                close();
                z = true;
            }
        }
        z = false;
        return z;
    }

    public synchronized boolean updateRetryCount(ArrayList<ClickData> arrayList) {
        boolean z;
        if (arrayList != null) {
            try {
            } catch (Exception e) {
                Log.internal(Constants.LOG_TAG, "Exception updating retry count", e);
                z = false;
            }
            if (!arrayList.isEmpty()) {
                open();
                Iterator<ClickData> it = arrayList.iterator();
                while (it.hasNext()) {
                    ClickData next = it.next();
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(COLUMN_CLICK_ID, Long.valueOf(next.getClickId()));
                    contentValues.put(COLUMN_CLICK_URL, next.getClickUrl());
                    contentValues.put(COLUMN_FOLLOW_REDIRECT, Boolean.valueOf(next.isFollowRedirects()));
                    contentValues.put(COLUMN_PINGWV, Boolean.valueOf(next.isPingWv()));
                    contentValues.put(COLUMN_RETRY_COUNT, Integer.valueOf(next.getRetryCount() + 1));
                    contentValues.put("timestamp", Long.valueOf(next.getTimestamp()));
                    update(TABLE_CLICK, contentValues, "clickid= ?", new String[]{String.valueOf(next.getClickId())});
                }
                close();
                z = true;
            }
        }
        z = false;
        return z;
    }

    public void setDBLimit(int i) {
        if (i > 0) {
            this.b = i;
        }
    }

    public int getNoOfEvents() {
        try {
            open();
            int noOfRows = getInstance().getNoOfRows(TABLE_CLICK, null, null);
            close();
            return noOfRows;
        } catch (Exception e) {
            Log.internal(Constants.LOG_TAG, "Exception getting no of click events", e);
            return 0;
        }
    }
}
