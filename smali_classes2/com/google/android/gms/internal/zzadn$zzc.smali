.class abstract Lcom/google/android/gms/internal/zzadn$zzc;
.super Lcom/google/android/gms/internal/zzadn$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzadn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzadn$zzb",
        "<",
        "Lcom/google/android/gms/internal/zzadi$zzb;",
        ">;"
    }
.end annotation


# instance fields
.field protected zzaIL:Lcom/google/android/gms/internal/zzady;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzadn$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance v0, Lcom/google/android/gms/internal/zzadn$zzc$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzadn$zzc$1;-><init>(Lcom/google/android/gms/internal/zzadn$zzc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzadn$zzc;->zzaIL:Lcom/google/android/gms/internal/zzady;

    return-void
.end method
