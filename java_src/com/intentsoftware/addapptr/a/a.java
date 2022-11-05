package com.intentsoftware.addapptr.a;

import com.intentsoftware.addapptr.AdNetwork;
import com.intentsoftware.addapptr.AdType;
import com.intentsoftware.addapptr.BannerSize;
import com.intentsoftware.addapptr.ad;
import com.intentsoftware.addapptr.t;
import com.intentsoftware.addapptr.w;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.InputMismatchException;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Scanner;
/* compiled from: Config.java */
/* loaded from: classes2.dex */
public class a {
    private static final String CONFIG_DELIMITER = ";";
    private static final String CONFIG_TYPE_BANNER = "BANNER";
    private static final String CONFIG_TYPE_FULLSCREEN = "FULLSCREEN";
    private static final String CONFIG_TYPE_IPADDR = "IPADDR";
    private static final String CONFIG_TYPE_NATIVE = "NATIVE";
    private static final String CONFIG_TYPE_OPTION = "OPTION";
    private static final String CONFIG_TYPE_PLACEMENT = "PLACEMENT";
    private static final String CONFIG_TYPE_PROMO = "PROMO";
    private static final int ERROR_FLAG_PRIORITY = 35505;
    private static final String NATIVE_BANNER_PREFIX = "NativeBanner:";
    private static final String NATIVE_FULLSCREEN_PREFIX = "NativeFullscreen:";
    private String IPaddr;
    private boolean gotIP = false;
    private boolean unrecognizedBundleId = false;
    private final ArrayList<com.intentsoftware.addapptr.b> adConfigs = new ArrayList<>();
    private final ArrayList<t> placementConfigs = new ArrayList<>();
    private final Map<String, String> options = new HashMap();

    public a(String str) {
        processConfigData(str);
    }

    public ArrayList<com.intentsoftware.addapptr.b> getAdConfigs() {
        return this.adConfigs;
    }

    public ArrayList<t> getPlacementConfigs() {
        return this.placementConfigs;
    }

    private void processConfigData(String str) {
        Scanner scanner = new Scanner(str.trim());
        while (scanner.hasNextLine()) {
            processConfigLine(scanner.nextLine());
        }
        scanner.close();
    }

    private void processConfigLine(String str) {
        try {
            Scanner scanner = new Scanner(str);
            scanner.useDelimiter(CONFIG_DELIMITER);
            String next = scanner.next();
            char c = 65535;
            switch (next.hashCode()) {
                case -2129153640:
                    if (next.equals(CONFIG_TYPE_IPADDR)) {
                        c = 1;
                        break;
                    }
                    break;
                case -1999289321:
                    if (next.equals(CONFIG_TYPE_NATIVE)) {
                        c = 6;
                        break;
                    }
                    break;
                case -1956807563:
                    if (next.equals(CONFIG_TYPE_OPTION)) {
                        c = 3;
                        break;
                    }
                    break;
                case 76402927:
                    if (next.equals(CONFIG_TYPE_PROMO)) {
                        c = 2;
                        break;
                    }
                    break;
                case 284566213:
                    if (next.equals(CONFIG_TYPE_PLACEMENT)) {
                        c = 0;
                        break;
                    }
                    break;
                case 595158971:
                    if (next.equals(CONFIG_TYPE_FULLSCREEN)) {
                        c = 5;
                        break;
                    }
                    break;
                case 1951953708:
                    if (next.equals(CONFIG_TYPE_BANNER)) {
                        c = 4;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    processPlacementConfig(scanner);
                    return;
                case 1:
                    processIPaddrConfig(scanner);
                    return;
                case 2:
                    processPromoConfig(scanner);
                    return;
                case 3:
                    processOptionConfig(scanner);
                    return;
                case 4:
                case 5:
                case 6:
                    processAdConfig(next, scanner);
                    return;
                default:
                    if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
                        com.intentsoftware.addapptr.c.c.w(this, "Unsupported config type " + next);
                        return;
                    }
                    return;
            }
        } catch (IllegalStateException e) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "Scanner has been closed", e);
            }
        } catch (NoSuchElementException e2) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "Empty config line", e2);
            }
        }
    }

    private void processIPaddrConfig(Scanner scanner) {
        try {
            this.IPaddr = scanner.next();
            this.gotIP = true;
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "Received IP: " + this.IPaddr);
            }
        } catch (IllegalStateException e) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "Scanner has been closed", e);
            }
        } catch (InputMismatchException e2) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "Wrong type of argument for IP address", e2);
            }
        } catch (NoSuchElementException e3) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "Not enough config arguments for IP address", e3);
            }
        }
    }

    private void processOptionConfig(Scanner scanner) {
        try {
            this.options.put(scanner.next(), scanner.next());
        } catch (IllegalStateException e) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "Scanner has been closed", e);
            }
        } catch (InputMismatchException e2) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "Wrong type of argument for option", e2);
            }
        } catch (NoSuchElementException e3) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "Not enough config arguments for option", e3);
            }
        }
    }

    private void processPromoConfig(Scanner scanner) {
        String str = null;
        try {
            String next = scanner.next();
            int nextInt = scanner.nextInt();
            int nextInt2 = scanner.nextInt();
            String next2 = scanner.next();
            String next3 = scanner.hasNext() ? scanner.next() : null;
            if (next3 == null || !next3.isEmpty()) {
                str = next3;
            }
            if (str == null) {
                str = w.PROMO_NAME;
            }
            if (scanner.hasNext()) {
                throw new IllegalArgumentException();
            }
            if (nextInt == ERROR_FLAG_PRIORITY) {
                if (com.intentsoftware.addapptr.c.c.isLoggable(6)) {
                    if (nextInt2 == 5) {
                        this.unrecognizedBundleId = true;
                        com.intentsoftware.addapptr.c.c.e(this, "AATKit: The AddApptr server does not know your app's bundle ID (" + com.intentsoftware.addapptr.b.a.getReportingAppID() + "). You will receive no ads");
                        return;
                    }
                    com.intentsoftware.addapptr.c.c.e(this, "AATKit: The AddApptr server has encountered an error. Please report the error code " + nextInt2 + "to the AddApptr team");
                    return;
                }
                return;
            }
            AdNetwork fromServerConfigName = AdNetwork.fromServerConfigName(next);
            AdType adType = AdType.FULLSCREEN;
            if (next2.startsWith(NATIVE_FULLSCREEN_PREFIX)) {
                adType = AdType.NATIVE_INTERSTITIAL;
                next2 = next2.substring(NATIVE_FULLSCREEN_PREFIX.length());
            }
            if (fromServerConfigName != null && ad.isConfigSupported(fromServerConfigName, adType)) {
                this.adConfigs.add(new com.intentsoftware.addapptr.b(adType, fromServerConfigName, next2, nextInt, nextInt2, str, null));
            } else if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
                com.intentsoftware.addapptr.c.c.i(this, "Unsupported ad network: " + next + ", " + adType);
            }
        } catch (IllegalArgumentException e) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "Too many config arguments for Ad", e);
            }
        } catch (IllegalStateException e2) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "Scanner has been closed", e2);
            }
        } catch (InputMismatchException e3) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "Wrong type of argument for Ad", e3);
            }
        } catch (NoSuchElementException e4) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "Not enough config arguments for Ad", e4);
            }
        }
    }

    private void processPlacementConfig(Scanner scanner) {
        boolean z;
        boolean z2 = true;
        try {
            String next = scanner.next();
            long nextInt = scanner.nextInt() * 1000;
            if (scanner.hasNext()) {
                scanner.next();
            }
            int nextInt2 = scanner.hasNext() ? scanner.nextInt() : 0;
            int nextInt3 = scanner.hasNext() ? scanner.nextInt() : 0;
            int nextInt4 = scanner.hasNext() ? scanner.nextInt() : 0;
            int nextInt5 = scanner.hasNext() ? scanner.nextInt() : 0;
            if (scanner.hasNext()) {
                if (scanner.nextInt() != 1) {
                    z2 = false;
                }
                z = z2;
            } else {
                z = true;
            }
            this.placementConfigs.add(new t(next, nextInt, nextInt2, nextInt3, nextInt4, nextInt5, z));
        } catch (IllegalStateException e) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "Scanner has been closed", e);
            }
        } catch (InputMismatchException e2) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "Wrong type of argument for placement", e2);
            }
        } catch (NoSuchElementException e3) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "Not enough config arguments for placement", e3);
            }
        }
    }

    private void processAdConfig(String str, Scanner scanner) {
        String str2 = null;
        try {
            String next = scanner.next();
            int nextInt = scanner.nextInt();
            int nextInt2 = scanner.nextInt();
            String next2 = scanner.next();
            String next3 = scanner.hasNext() ? scanner.next() : null;
            if (next3 != null && next3.isEmpty()) {
                next3 = null;
            }
            if (scanner.hasNext()) {
                str2 = scanner.next();
            }
            if (scanner.hasNext()) {
                throw new IllegalArgumentException();
            }
            if (nextInt == ERROR_FLAG_PRIORITY) {
                if (com.intentsoftware.addapptr.c.c.isLoggable(6)) {
                    if (nextInt2 == 5) {
                        this.unrecognizedBundleId = true;
                        com.intentsoftware.addapptr.c.c.e(this, "AATKit: The AddApptr server does not know your app's bundle ID (" + com.intentsoftware.addapptr.b.a.getReportingAppID() + "). You will receive no ads");
                        return;
                    }
                    com.intentsoftware.addapptr.c.c.e(this, "AATKit: The AddApptr server has encountered an error. Please report the error code " + nextInt2 + "to the AddApptr team");
                    return;
                }
                return;
            }
            AdNetwork fromServerConfigName = AdNetwork.fromServerConfigName(next);
            AdType valueOf = AdType.valueOf(str);
            if (valueOf == AdType.BANNER && next2.startsWith(NATIVE_BANNER_PREFIX)) {
                valueOf = AdType.NATIVE_BANNER;
                next2 = next2.substring(NATIVE_BANNER_PREFIX.length());
            } else if (valueOf == AdType.FULLSCREEN && next2.startsWith(NATIVE_FULLSCREEN_PREFIX)) {
                valueOf = AdType.NATIVE_INTERSTITIAL;
                next2 = next2.substring(NATIVE_FULLSCREEN_PREFIX.length());
            }
            BannerSize fromServerConfigName2 = BannerSize.fromServerConfigName(str2);
            if (str2 != null && fromServerConfigName2 == null) {
                if (com.intentsoftware.addapptr.c.c.isLoggable(5)) {
                    com.intentsoftware.addapptr.c.c.w(this, "Banner size in server config (" + str2 + ") cannot be matched to any supported banner size. Rule for network: " + next + ", type: " + valueOf + " will be ignored.");
                }
            } else if (fromServerConfigName != null && ad.isConfigSupported(fromServerConfigName, valueOf)) {
                this.adConfigs.add(new com.intentsoftware.addapptr.b(valueOf, fromServerConfigName, next2, nextInt, nextInt2, next3, fromServerConfigName2));
            } else if (com.intentsoftware.addapptr.c.c.isLoggable(4)) {
                com.intentsoftware.addapptr.c.c.i(this, "Unsupported ad network: " + next + ", " + valueOf);
            }
        } catch (IllegalArgumentException e) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "Too many config arguments for Ad", e);
            }
        } catch (IllegalStateException e2) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "Scanner has been closed", e2);
            }
        } catch (InputMismatchException e3) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "Wrong type of argument for Ad", e3);
            }
        } catch (NoSuchElementException e4) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "Not enough config arguments for Ad", e4);
            }
        }
    }

    public String getIPaddr() {
        return this.IPaddr;
    }

    public Map<String, String> getOptions() {
        return this.options;
    }

    public boolean isGotIP() {
        return this.gotIP;
    }

    public boolean isUnrecognizedBundleId() {
        return this.unrecognizedBundleId;
    }
}
