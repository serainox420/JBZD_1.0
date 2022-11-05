.class public Lcom/google/android/gms/wearable/internal/zzn$zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/wearable/CapabilityApi$GetAllCapabilitiesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/zzn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzd"
.end annotation


# instance fields
.field private final zzair:Lcom/google/android/gms/common/api/Status;

.field private final zzbTO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/wearable/CapabilityInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/wearable/CapabilityInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzn$zzd;->zzair:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzn$zzd;->zzbTO:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAllCapabilities()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/wearable/CapabilityInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzn$zzd;->zzbTO:Ljava/util/Map;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzn$zzd;->zzair:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
