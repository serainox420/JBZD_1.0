.class public Lcom/google/android/gms/wearable/internal/zzam;
.super Lcom/google/android/gms/common/data/zzc;

# interfaces
.implements Lcom/google/android/gms/wearable/DataItemAsset;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzam;->zzUw()Lcom/google/android/gms/wearable/DataItemAsset;

    move-result-object v0

    return-object v0
.end method

.method public getDataItemKey()Ljava/lang/String;
    .locals 1

    const-string v0, "asset_key"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzam;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "asset_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzam;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzUw()Lcom/google/android/gms/wearable/DataItemAsset;
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzak;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/zzak;-><init>(Lcom/google/android/gms/wearable/DataItemAsset;)V

    return-object v0
.end method
