package com.smaato.soma.internal.requests.settings;

import android.content.Context;
import android.location.Address;
import android.location.Criteria;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.firebase.a.a;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.exception.AddressFromLocationFailed;
import com.smaato.soma.exception.BestGPSProviderFailed;
import com.smaato.soma.exception.LatitudeValidationFailed;
import com.smaato.soma.exception.LocationManagerFailed;
import com.smaato.soma.exception.LongitudeValidationFailed;
import com.smaato.soma.exception.ModifyingLocationStateFailed;
import com.smaato.soma.exception.RetrievingLocationFailed;
import com.smaato.soma.internal.c.k;
import com.smaato.soma.l;
import java.util.List;
import java.util.Locale;
/* compiled from: LocationCollector.java */
/* loaded from: classes3.dex */
public class c implements LocationListener {
    private final com.smaato.soma.b d;
    private final Context e;
    private final Geocoder f;

    /* renamed from: a  reason: collision with root package name */
    protected double f5076a = 0.0d;
    protected double b = 0.0d;
    protected double c = 0.0d;
    private transient boolean g = false;

    public c(com.smaato.soma.b bVar, Context context) {
        this.d = bVar;
        this.e = context;
        this.f = new Geocoder(context, new Locale("en", "US"));
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(final Location location) {
        com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.requests.settings.c.1
        });
        new l<Void>() { // from class: com.smaato.soma.internal.requests.settings.c.4
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                double latitude = location.getLatitude();
                double longitude = location.getLongitude();
                c.this.f5076a = latitude;
                c.this.b = longitude;
                c.this.c = location.getAltitude();
                return null;
            }
        }.c();
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String str) {
        com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.requests.settings.c.5
        });
        new l<Void>() { // from class: com.smaato.soma.internal.requests.settings.c.6
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                c.this.f5076a = 0.0d;
                c.this.b = 0.0d;
                return null;
            }
        }.c();
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String str, int i, Bundle bundle) {
    }

    public final void a(boolean z) throws ModifyingLocationStateFailed {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.requests.settings.c.7
            });
            this.g = z;
            LocationManager a2 = a(a());
            if (z) {
                String a3 = a(a2);
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("Location_Collector", "Best location provider: " + a3, 1, DebugCategory.INFO));
                a2.requestLocationUpdates(a3, 60000L, BitmapDescriptorFactory.HUE_RED, this);
                return;
            }
            a2.removeUpdates(this);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new ModifyingLocationStateFailed(e2);
        }
    }

    private String a(LocationManager locationManager) throws BestGPSProviderFailed {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.requests.settings.c.8
            });
            return locationManager.getBestProvider(new Criteria(), true);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new BestGPSProviderFailed(e2);
        }
    }

    private LocationManager a(Context context) throws LocationManagerFailed {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.requests.settings.c.9
            });
            return (LocationManager) context.getSystemService(a.b.LOCATION);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new LocationManagerFailed(e2);
        }
    }

    public String a(double d, double d2) throws RetrievingLocationFailed {
        if (d2 != 0.0d || d != 0.0d) {
            try {
                if (b(d2) && a(d)) {
                    this.f5076a = d;
                    this.b = d2;
                }
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                throw new RetrievingLocationFailed(e2);
            }
        }
        StringBuffer stringBuffer = new StringBuffer();
        if (a(this.f5076a) && ((this.f5076a != 0.0d || this.b != 0.0d) && b(this.b))) {
            stringBuffer.append(String.format(Locale.US, "&gps=%.6f,%.6f", Double.valueOf(this.f5076a), Double.valueOf(this.b)));
            if (this.c != 0.0d) {
                stringBuffer.append(String.format(Locale.US, "&altitude=%.6f", Double.valueOf(this.c)));
            }
            Address b = b(this.f5076a, this.b);
            if (b != null) {
                String countryName = b.getCountryName();
                if (countryName != null && countryName.length() > 0) {
                    stringBuffer.append("&country=");
                    stringBuffer.append(k.a(countryName));
                }
                String postalCode = b.getPostalCode();
                if (postalCode != null && postalCode.length() > 0) {
                    stringBuffer.append("&zip=");
                    stringBuffer.append(k.a(postalCode));
                }
                String countryCode = b.getCountryCode();
                if (countryCode != null && countryCode.length() > 0) {
                    stringBuffer.append("&countrycode=");
                    stringBuffer.append(k.a(countryCode));
                }
            }
        }
        return stringBuffer.toString();
    }

    private Context a() {
        return this.e;
    }

    boolean a(double d) throws LatitudeValidationFailed {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.requests.settings.c.2
            });
            return d >= -90.0d && d <= 90.0d;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new LatitudeValidationFailed(e2);
        }
    }

    boolean b(double d) throws LongitudeValidationFailed {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.requests.settings.c.3
            });
            return d >= -180.0d && d <= 180.0d;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new LongitudeValidationFailed(e2);
        }
    }

    private Address b(double d, double d2) throws AddressFromLocationFailed {
        List<Address> fromLocation;
        try {
            if (this.f != null && (fromLocation = this.f.getFromLocation(d, d2, 1)) != null && fromLocation.size() > 0) {
                return fromLocation.get(0);
            }
            return null;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new AddressFromLocationFailed(e2);
        }
    }
}
