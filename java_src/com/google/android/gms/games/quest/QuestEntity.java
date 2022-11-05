package com.google.android.gms.games.quest;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zzh;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class QuestEntity extends GamesAbstractSafeParcelable implements Quest {
    public static final Parcelable.Creator<QuestEntity> CREATOR = new QuestEntityCreator();
    private final Uri mIconUri;
    private final String mName;
    private final int mState;
    private final long zzaYP;
    private final String zzade;
    private final int zzakD;
    private final GameEntity zzbcv;
    private final String zzbeV;
    private final long zzbeW;
    private final Uri zzbeX;
    private final String zzbeY;
    private final long zzbeZ;
    private final String zzbfa;
    private final long zzbfb;
    private final long zzbfc;
    private final ArrayList<MilestoneEntity> zzbfd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public QuestEntity(GameEntity gameEntity, String str, long j, Uri uri, String str2, String str3, long j2, long j3, Uri uri2, String str4, String str5, long j4, long j5, int i, int i2, ArrayList<MilestoneEntity> arrayList) {
        this.zzbcv = gameEntity;
        this.zzbeV = str;
        this.zzbeW = j;
        this.zzbeX = uri;
        this.zzbeY = str2;
        this.zzade = str3;
        this.zzbeZ = j2;
        this.zzaYP = j3;
        this.mIconUri = uri2;
        this.zzbfa = str4;
        this.mName = str5;
        this.zzbfb = j4;
        this.zzbfc = j5;
        this.mState = i;
        this.zzakD = i2;
        this.zzbfd = arrayList;
    }

    public QuestEntity(Quest quest) {
        this.zzbcv = new GameEntity(quest.getGame());
        this.zzbeV = quest.getQuestId();
        this.zzbeW = quest.getAcceptedTimestamp();
        this.zzade = quest.getDescription();
        this.zzbeX = quest.getBannerImageUri();
        this.zzbeY = quest.getBannerImageUrl();
        this.zzbeZ = quest.getEndTimestamp();
        this.mIconUri = quest.getIconImageUri();
        this.zzbfa = quest.getIconImageUrl();
        this.zzaYP = quest.getLastUpdatedTimestamp();
        this.mName = quest.getName();
        this.zzbfb = quest.zzGx();
        this.zzbfc = quest.getStartTimestamp();
        this.mState = quest.getState();
        this.zzakD = quest.getType();
        List<Milestone> zzGw = quest.zzGw();
        int size = zzGw.size();
        this.zzbfd = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            this.zzbfd.add((MilestoneEntity) zzGw.get(i).mo520freeze());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(Quest quest) {
        return zzaa.hashCode(quest.getGame(), quest.getQuestId(), Long.valueOf(quest.getAcceptedTimestamp()), quest.getBannerImageUri(), quest.getDescription(), Long.valueOf(quest.getEndTimestamp()), quest.getIconImageUri(), Long.valueOf(quest.getLastUpdatedTimestamp()), quest.zzGw(), quest.getName(), Long.valueOf(quest.zzGx()), Long.valueOf(quest.getStartTimestamp()), Integer.valueOf(quest.getState()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(Quest quest, Object obj) {
        if (!(obj instanceof Quest)) {
            return false;
        }
        if (quest == obj) {
            return true;
        }
        Quest quest2 = (Quest) obj;
        return zzaa.equal(quest2.getGame(), quest.getGame()) && zzaa.equal(quest2.getQuestId(), quest.getQuestId()) && zzaa.equal(Long.valueOf(quest2.getAcceptedTimestamp()), Long.valueOf(quest.getAcceptedTimestamp())) && zzaa.equal(quest2.getBannerImageUri(), quest.getBannerImageUri()) && zzaa.equal(quest2.getDescription(), quest.getDescription()) && zzaa.equal(Long.valueOf(quest2.getEndTimestamp()), Long.valueOf(quest.getEndTimestamp())) && zzaa.equal(quest2.getIconImageUri(), quest.getIconImageUri()) && zzaa.equal(Long.valueOf(quest2.getLastUpdatedTimestamp()), Long.valueOf(quest.getLastUpdatedTimestamp())) && zzaa.equal(quest2.zzGw(), quest.zzGw()) && zzaa.equal(quest2.getName(), quest.getName()) && zzaa.equal(Long.valueOf(quest2.zzGx()), Long.valueOf(quest.zzGx())) && zzaa.equal(Long.valueOf(quest2.getStartTimestamp()), Long.valueOf(quest.getStartTimestamp())) && zzaa.equal(Integer.valueOf(quest2.getState()), Integer.valueOf(quest.getState()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(Quest quest) {
        return zzaa.zzv(quest).zzg("Game", quest.getGame()).zzg("QuestId", quest.getQuestId()).zzg("AcceptedTimestamp", Long.valueOf(quest.getAcceptedTimestamp())).zzg("BannerImageUri", quest.getBannerImageUri()).zzg("BannerImageUrl", quest.getBannerImageUrl()).zzg("Description", quest.getDescription()).zzg("EndTimestamp", Long.valueOf(quest.getEndTimestamp())).zzg("IconImageUri", quest.getIconImageUri()).zzg("IconImageUrl", quest.getIconImageUrl()).zzg("LastUpdatedTimestamp", Long.valueOf(quest.getLastUpdatedTimestamp())).zzg("Milestones", quest.zzGw()).zzg("Name", quest.getName()).zzg("NotifyTimestamp", Long.valueOf(quest.zzGx())).zzg("StartTimestamp", Long.valueOf(quest.getStartTimestamp())).zzg("State", Integer.valueOf(quest.getState())).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: freeze */
    public Quest mo520freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public long getAcceptedTimestamp() {
        return this.zzbeW;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public Uri getBannerImageUri() {
        return this.zzbeX;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public String getBannerImageUrl() {
        return this.zzbeY;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public Milestone getCurrentMilestone() {
        return zzGw().get(0);
    }

    @Override // com.google.android.gms.games.quest.Quest
    public String getDescription() {
        return this.zzade;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzade, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.quest.Quest
    public long getEndTimestamp() {
        return this.zzbeZ;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public Game getGame() {
        return this.zzbcv;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public Uri getIconImageUri() {
        return this.mIconUri;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public String getIconImageUrl() {
        return this.zzbfa;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public long getLastUpdatedTimestamp() {
        return this.zzaYP;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public String getName() {
        return this.mName;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public void getName(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.mName, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.quest.Quest
    public String getQuestId() {
        return this.zzbeV;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public long getStartTimestamp() {
        return this.zzbfc;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public int getState() {
        return this.mState;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public int getType() {
        return this.zzakD;
    }

    public int hashCode() {
        return zza(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    @Override // com.google.android.gms.games.quest.Quest
    public boolean isEndingSoon() {
        return this.zzbfb <= System.currentTimeMillis() + 1800000;
    }

    public String toString() {
        return zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        QuestEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.quest.Quest
    public List<Milestone> zzGw() {
        return new ArrayList(this.zzbfd);
    }

    @Override // com.google.android.gms.games.quest.Quest
    public long zzGx() {
        return this.zzbfb;
    }
}
