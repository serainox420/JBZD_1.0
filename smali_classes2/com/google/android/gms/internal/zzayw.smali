.class Lcom/google/android/gms/internal/zzayw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/panorama/PanoramaApi$PanoramaResult;


# instance fields
.field private final zzair:Lcom/google/android/gms/common/api/Status;

.field private final zzbBx:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzayw;->zzair:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzayw;->zzbBx:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayw;->zzair:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public getViewerIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayw;->zzbBx:Landroid/content/Intent;

    return-object v0
.end method