package com.google.android.gms.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.zzazf;
import com.google.android.gms.plus.model.people.Person;
import com.madsdk.AdView;
import java.util.List;
/* loaded from: classes2.dex */
public final class zzazq extends com.google.android.gms.common.data.zzc implements Person {
    public zzazq(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getAboutMe() {
        return null;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public Person.AgeRange getAgeRange() {
        return null;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getBirthday() {
        return null;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getBraggingRights() {
        return null;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public int getCircledByCount() {
        return 0;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public Person.Cover getCover() {
        return null;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getCurrentLocation() {
        return null;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getDisplayName() {
        return getString("displayName");
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public int getGender() {
        return 0;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getId() {
        return getString("personId");
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public Person.Image getImage() {
        return new zzazf.zzc(getString(AdView.DEFAULT_IMAGE_NAME));
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getLanguage() {
        return null;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public Person.Name getName() {
        return null;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getNickname() {
        return null;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public int getObjectType() {
        return zzazf.zze.zzgs(getString("objectType"));
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public /* bridge */ /* synthetic */ List getOrganizations() {
        return null;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public /* bridge */ /* synthetic */ List getPlacesLived() {
        return null;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public int getPlusOneCount() {
        return 0;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public int getRelationshipStatus() {
        return 0;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getTagline() {
        return null;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getUrl() {
        return getString("url");
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public /* bridge */ /* synthetic */ List getUrls() {
        return null;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasAboutMe() {
        return false;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasAgeRange() {
        return false;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasBirthday() {
        return false;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasBraggingRights() {
        return false;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasCircledByCount() {
        return false;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasCover() {
        return false;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasCurrentLocation() {
        return false;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasDisplayName() {
        return true;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasGender() {
        return false;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasId() {
        return true;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasImage() {
        return true;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasIsPlusUser() {
        return false;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasLanguage() {
        return false;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasName() {
        return false;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasNickname() {
        return false;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasObjectType() {
        return true;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasOrganizations() {
        return false;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasPlacesLived() {
        return false;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasPlusOneCount() {
        return false;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasRelationshipStatus() {
        return false;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasTagline() {
        return false;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasUrl() {
        return true;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasUrls() {
        return false;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasVerified() {
        return false;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean isPlusUser() {
        return false;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean isVerified() {
        return false;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzPv */
    public Person mo520freeze() {
        return new zzazf(getDisplayName(), getId(), (zzazf.zzc) getImage(), getObjectType(), getUrl());
    }
}
