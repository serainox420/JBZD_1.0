package com.google.android.gms.identity.intents;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public final class UserAddressRequest extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<UserAddressRequest> CREATOR = new zza();
    List<CountrySpecification> zzbhs;

    /* loaded from: classes2.dex */
    public final class Builder {
        private Builder() {
        }

        public Builder addAllowedCountrySpecification(CountrySpecification countrySpecification) {
            if (UserAddressRequest.this.zzbhs == null) {
                UserAddressRequest.this.zzbhs = new ArrayList();
            }
            UserAddressRequest.this.zzbhs.add(countrySpecification);
            return this;
        }

        public Builder addAllowedCountrySpecifications(Collection<CountrySpecification> collection) {
            if (UserAddressRequest.this.zzbhs == null) {
                UserAddressRequest.this.zzbhs = new ArrayList();
            }
            UserAddressRequest.this.zzbhs.addAll(collection);
            return this;
        }

        public UserAddressRequest build() {
            if (UserAddressRequest.this.zzbhs != null) {
                UserAddressRequest.this.zzbhs = Collections.unmodifiableList(UserAddressRequest.this.zzbhs);
            }
            return UserAddressRequest.this;
        }
    }

    UserAddressRequest() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UserAddressRequest(List<CountrySpecification> list) {
        this.zzbhs = list;
    }

    public static Builder newBuilder() {
        UserAddressRequest userAddressRequest = new UserAddressRequest();
        userAddressRequest.getClass();
        return new Builder();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }
}
