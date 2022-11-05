package com.openx.common.deviceData.managers;

import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.net.wifi.WifiManager;
import android.os.Environment;
import android.os.PowerManager;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.view.WindowManager;
import com.google.android.gms.drive.DriveFile;
import com.openx.common.deviceData.listeners.DeviceInfoListener;
import com.openx.common.utils.helpers.Utils;
import com.openx.core.sdk.OXMBaseManager;
import com.openx.sdk.browser.AdBrowserActivity;
import com.openx.sdk.calendar.OXMCalendarEvent;
import com.openx.sdk.calendar.OXMCalendarFactory;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import org.apache.http.util.ByteArrayBuffer;
/* loaded from: classes3.dex */
public final class DeviceInfoImpl extends OXMBaseManager implements DeviceInfoListener {
    private Context mContext;
    private KeyguardManager mKeyguardManager;
    private PackageManager mPackageManager;
    private PowerManager mPowerManager;
    private TelephonyManager mTelephonyManager;
    private WifiManager mWifiManager;
    private WindowManager mWindowManager;

    @Override // com.openx.core.sdk.OXMBaseManager, com.openx.core.sdk.OXMManager
    public void init(Context context) {
        super.init(context);
        this.mContext = context;
        if (super.isInit()) {
            this.mTelephonyManager = (TelephonyManager) getContext().getSystemService("phone");
            this.mWindowManager = (WindowManager) getContext().getSystemService("window");
            this.mWifiManager = (WifiManager) getContext().getSystemService("wifi");
            this.mPowerManager = (PowerManager) getContext().getSystemService("power");
            this.mKeyguardManager = (KeyguardManager) getContext().getSystemService("keyguard");
            this.mPackageManager = getContext().getPackageManager();
            hasTelephony();
        }
    }

    @Override // com.openx.common.deviceData.listeners.DeviceInfoListener
    public boolean hasTelephony() {
        if (this.mTelephonyManager != null && this.mPackageManager != null) {
            try {
                Object invoke = this.mPackageManager.getClass().getMethod("hasSystemFeature", String.class).invoke(this.mPackageManager, new String("android.hardware.telephony"));
                if (!(invoke instanceof Boolean)) {
                    return false;
                }
                return ((Boolean) invoke).booleanValue();
            } catch (Exception e) {
                return false;
            }
        }
        return false;
    }

    @Override // com.openx.common.deviceData.listeners.DeviceInfoListener
    public String getCarrier() {
        String networkOperator;
        if (!isInit() || (networkOperator = this.mTelephonyManager.getNetworkOperator()) == null || networkOperator.equals("") || networkOperator.length() <= 3) {
            return null;
        }
        return networkOperator.substring(0, 3) + '-' + networkOperator.substring(3);
    }

    @Override // com.openx.common.deviceData.listeners.DeviceInfoListener
    public String getDeviceId() {
        if (isInit()) {
            return Settings.System.getString(getContext().getContentResolver(), "android_id");
        }
        return null;
    }

    @Override // com.openx.common.deviceData.listeners.DeviceInfoListener
    public boolean isPermissionGranted(String str) {
        return isInit() && getContext().checkCallingOrSelfPermission(str) == 0;
    }

    @Override // com.openx.common.deviceData.listeners.DeviceInfoListener
    public int getDeviceOrientation() {
        Configuration configuration = isInit() ? getContext().getResources().getConfiguration() : null;
        if (configuration != null) {
            return configuration.orientation;
        }
        return 0;
    }

    @Override // com.openx.core.sdk.OXMBaseManager, com.openx.core.sdk.OXMManager
    public void dispose() {
        super.dispose();
        this.mTelephonyManager = null;
        this.mKeyguardManager = null;
        this.mPowerManager = null;
        this.mWifiManager = null;
        this.mWindowManager = null;
    }

    @Override // com.openx.common.deviceData.listeners.DeviceInfoListener
    public int getScreenWidth() {
        WindowManager windowManager = this.mWindowManager;
        if (windowManager != null) {
            return windowManager.getDefaultDisplay().getWidth();
        }
        return 0;
    }

    @Override // com.openx.common.deviceData.listeners.DeviceInfoListener
    public int getScreenHeight() {
        WindowManager windowManager = this.mWindowManager;
        if (windowManager != null) {
            return windowManager.getDefaultDisplay().getHeight();
        }
        return 0;
    }

    @Override // com.openx.common.deviceData.listeners.DeviceInfoListener
    public String getODIN1() {
        String deviceId = getDeviceId();
        return deviceId != null ? Utils.generateSHA1(deviceId) : "";
    }

    @Override // com.openx.common.deviceData.listeners.DeviceInfoListener
    public String getDeviceMacAddress() {
        String macAddress;
        if (!isPermissionGranted("android.permission.ACCESS_WIFI_STATE") || this.mWifiManager == null || this.mWifiManager.getConnectionInfo() == null || (macAddress = this.mWifiManager.getConnectionInfo().getMacAddress()) == null) {
            ArrayList<ArpEntity> deviceMacAddressesFromArp = getDeviceMacAddressesFromArp();
            if (deviceMacAddressesFromArp.size() > 0) {
                return deviceMacAddressesFromArp.get(0).getMac();
            }
            return "";
        }
        return macAddress;
    }

    @Override // com.openx.common.deviceData.listeners.DeviceInfoListener
    public boolean isScreenOn() {
        if (this.mPowerManager != null) {
            return this.mPowerManager.isScreenOn();
        }
        return false;
    }

    @Override // com.openx.common.deviceData.listeners.DeviceInfoListener
    public boolean isScreenLocked() {
        if (this.mKeyguardManager != null) {
            return this.mKeyguardManager.inKeyguardRestrictedInputMode();
        }
        return false;
    }

    @Override // com.openx.common.deviceData.listeners.DeviceInfoListener
    public void createCalendarEvent(OXMCalendarEvent oXMCalendarEvent) throws Exception {
        if (oXMCalendarEvent != null && getContext() != null) {
            OXMCalendarFactory.getCalendarInstance().createCalendarEvent(getContext(), oXMCalendarEvent);
        }
    }

    @Override // com.openx.common.deviceData.listeners.DeviceInfoListener
    public void storePicture(String str) throws Exception {
        File file = null;
        if (Utils.atLeastFroyo()) {
            file = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES);
        } else if (Utils.isExternalStorageAvailable()) {
            file = Environment.getExternalStorageDirectory();
        }
        file.mkdirs();
        String md5 = Utils.md5(str);
        URL url = new URL(str);
        File file2 = new File(file, md5);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(url.openConnection().getInputStream());
        ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(1024);
        while (true) {
            int read = bufferedInputStream.read();
            if (read != -1) {
                byteArrayBuffer.append((byte) read);
            } else {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                fileOutputStream.write(byteArrayBuffer.toByteArray());
                fileOutputStream.close();
                return;
            }
        }
    }

    @Override // com.openx.common.deviceData.listeners.DeviceInfoListener
    public void playVideo(String str) throws IOException {
        Intent intent = new Intent(getContext(), AdBrowserActivity.class);
        intent.setFlags(DriveFile.MODE_READ_ONLY);
        intent.putExtra(AdBrowserActivity.EXTRA_IS_VIDEO, true);
        intent.putExtra(AdBrowserActivity.EXTRA_URL, str);
        getContext().startActivity(intent);
    }

    @Override // com.openx.common.deviceData.listeners.DeviceInfoListener
    public boolean canStorePicture() {
        return Utils.atLeastFroyo() || Utils.isExternalStorageAvailable();
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0059 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private ArrayList<ArpEntity> getDeviceMacAddressesFromArp() {
        BufferedReader bufferedReader;
        ArrayList<ArpEntity> arrayList = new ArrayList<>();
        BufferedReader bufferedReader2 = null;
        try {
            try {
                bufferedReader = new BufferedReader(new FileReader("/proc/net/arp"));
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        String[] split = readLine.split(" +");
                        if (split != null && split.length >= 4) {
                            String str = split[3];
                            if (str.matches("..:..:..:..:..:..")) {
                                arrayList.add(new ArpEntity(split[0], str));
                            }
                        }
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                        return arrayList;
                    }
                }
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Exception e5) {
            e = e5;
            bufferedReader = null;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
            }
            throw th;
        }
        return arrayList;
    }

    @Override // com.openx.common.deviceData.listeners.DeviceInfoListener
    public float getDeviceDensity() {
        if (this.mContext != null) {
            return this.mContext.getResources().getDisplayMetrics().density;
        }
        return 1.0f;
    }
}
