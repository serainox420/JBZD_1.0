.class final Lcom/google/android/gms/internal/zzye$zze;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzye;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zze"
.end annotation


# instance fields
.field private final zzair:Lcom/google/android/gms/common/api/Status;

.field private final zzavw:Ljava/lang/String;

.field private final zzavx:J

.field private final zzavy:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;JLorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzye$zze;->zzair:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzye$zze;->zzavw:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzye$zze;->zzavx:J

    iput-object p5, p0, Lcom/google/android/gms/internal/zzye$zze;->zzavy:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public getExtraMessageData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzye$zze;->zzavy:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzye$zze;->zzavw:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzye$zze;->zzavx:J

    return-wide v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzye$zze;->zzair:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
