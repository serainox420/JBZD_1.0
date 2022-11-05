.class final Lcom/google/android/gms/internal/zzzf$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzc"
.end annotation


# instance fields
.field private final zzOq:Landroid/view/Display;

.field private final zzair:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Landroid/view/Display;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzazx:Lcom/google/android/gms/common/api/Status;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzf$zzc;->zzair:Lcom/google/android/gms/common/api/Status;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzf$zzc;->zzOq:Landroid/view/Display;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzf$zzc;->zzair:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzf$zzc;->zzOq:Landroid/view/Display;

    return-void
.end method


# virtual methods
.method public getPresentationDisplay()Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf$zzc;->zzOq:Landroid/view/Display;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf$zzc;->zzair:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
