.class Lcom/google/android/gms/internal/zzarc$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/instantapps/InstantAppsApi$LaunchDataResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzarc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzc"
.end annotation


# instance fields
.field private final zzahw:Lcom/google/android/gms/common/api/Status;

.field private final zzbiH:Lcom/google/android/gms/instantapps/LaunchData;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/instantapps/LaunchData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzarc$zzc;->zzahw:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzarc$zzc;->zzbiH:Lcom/google/android/gms/instantapps/LaunchData;

    return-void
.end method


# virtual methods
.method public getLaunchData()Lcom/google/android/gms/instantapps/LaunchData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarc$zzc;->zzbiH:Lcom/google/android/gms/instantapps/LaunchData;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarc$zzc;->zzahw:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
