package com.inmobi.commons.thinICE.cellular;

import android.content.Context;
import android.telephony.CellLocation;
import android.telephony.NeighboringCellInfo;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.util.Log;
import com.inmobi.commons.thinICE.icedatacollector.BuildSettings;
import com.inmobi.commons.thinICE.icedatacollector.IceDataCollector;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class CellUtil {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f3818a = {"android.permission.ACCESS_COARSE_LOCATION"};
    private static final String[] b = {"android.permission.ACCESS_FINE_LOCATION"};
    private static final String[] c = {"android.permission.ACCESS_COARSE_LOCATION"};

    private static int[] a(String str) {
        int[] iArr = {-1, -1};
        if (str != null && !str.equals("")) {
            try {
                int parseInt = Integer.parseInt(str.substring(0, 3));
                int parseInt2 = Integer.parseInt(str.substring(3));
                iArr[0] = parseInt;
                iArr[1] = parseInt2;
            } catch (IndexOutOfBoundsException e) {
            } catch (NumberFormatException e2) {
            }
        }
        return iArr;
    }

    public static CellOperatorInfo getCellNetworkInfo(Context context) {
        CellOperatorInfo cellOperatorInfo = new CellOperatorInfo();
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        int[] a2 = a(telephonyManager.getNetworkOperator());
        cellOperatorInfo.currentMcc = a2[0];
        cellOperatorInfo.currentMnc = a2[1];
        int[] a3 = a(telephonyManager.getSimOperator());
        cellOperatorInfo.simMcc = a3[0];
        cellOperatorInfo.simMnc = a3[1];
        return cellOperatorInfo;
    }

    public static boolean hasGetCurrentServingCellPermission(Context context) {
        boolean z = true;
        for (String str : f3818a) {
            if (context.checkCallingOrSelfPermission(str) != 0) {
                z = false;
            }
        }
        boolean z2 = true;
        for (String str2 : b) {
            if (context.checkCallingOrSelfPermission(str2) != 0) {
                z2 = false;
            }
        }
        return z || z2;
    }

    public static boolean hasGetVisibleCellTowerPermission(Context context) {
        for (String str : c) {
            if (context.checkCallingOrSelfPermission(str) != 0) {
                return false;
            }
        }
        return true;
    }

    public static CellTowerInfo getCurrentCellTower(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        int[] a2 = a(telephonyManager.getNetworkOperator());
        CellLocation cellLocation = telephonyManager.getCellLocation();
        if (cellLocation == null || a2[0] == -1) {
            return null;
        }
        CellTowerInfo cellTowerInfo = new CellTowerInfo();
        String valueOf = String.valueOf(a2[0]);
        String valueOf2 = String.valueOf(a2[1]);
        if (cellLocation instanceof CdmaCellLocation) {
            CdmaCellLocation cdmaCellLocation = (CdmaCellLocation) cellLocation;
            int networkId = cdmaCellLocation.getNetworkId();
            int baseStationId = cdmaCellLocation.getBaseStationId();
            int systemId = cdmaCellLocation.getSystemId();
            cellTowerInfo.signalStrength = a.a(context);
            if (networkId != -1 && baseStationId != -1 && systemId != -1) {
                String hexString = Integer.toHexString(networkId);
                String hexString2 = Integer.toHexString(baseStationId);
                cellTowerInfo.id = valueOf + "-" + valueOf2 + "-" + hexString + "-" + hexString2 + "-" + Integer.toHexString(systemId);
            }
        } else {
            GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
            int cid = gsmCellLocation.getCid();
            int lac = gsmCellLocation.getLac();
            cellTowerInfo.signalStrength = a.a(context);
            if (cid != -1 && lac != -1) {
                String hexString3 = Integer.toHexString(lac);
                cellTowerInfo.id = valueOf + "-" + valueOf2 + "-" + hexString3 + "-" + Integer.toHexString(cid);
            }
        }
        return cellTowerInfo;
    }

    public static List<NeighboringCellInfo> getVisibleCellTower(Context context) {
        List<NeighboringCellInfo> neighboringCellInfo = ((TelephonyManager) context.getSystemService("phone")).getNeighboringCellInfo();
        if (neighboringCellInfo == null || neighboringCellInfo.size() == 0) {
            return null;
        }
        return neighboringCellInfo;
    }

    public static List<Integer> getVisibleCellTowerIds(Context context) {
        List<NeighboringCellInfo> visibleCellTower = getVisibleCellTower(context);
        if (visibleCellTower == null || visibleCellTower.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (NeighboringCellInfo neighboringCellInfo : visibleCellTower) {
            arrayList.add(Integer.valueOf(neighboringCellInfo.getCid()));
        }
        return arrayList;
    }

    /* loaded from: classes2.dex */
    static class a {
        static int a(Context context) {
            try {
                ArrayList arrayList = (ArrayList) TelephonyManager.class.getMethod("getAllCellInfo", null).invoke((TelephonyManager) context.getSystemService("phone"), null);
                if (arrayList != null) {
                    Object obj = arrayList.get(0);
                    Object invoke = obj.getClass().getMethod("getCellSignalStrength", null).invoke(obj, null);
                    return ((Integer) invoke.getClass().getMethod("getDbm", null).invoke(invoke, null)).intValue();
                }
            } catch (Exception e) {
                if (BuildSettings.DEBUG) {
                    Log.e(IceDataCollector.TAG, "Error getting cell tower signal strength", e);
                }
            }
            return 0;
        }
    }
}
