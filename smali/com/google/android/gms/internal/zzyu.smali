.class public final Lcom/google/android/gms/internal/zzyu;
.super Ljava/lang/Object;


# static fields
.field public static final zzawx:Lcom/google/android/gms/internal/zzaqa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaqa",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "gms:cast:remote_display_enabled"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/zzaqa;->zzb(ILjava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzaqa$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzyu;->zzawx:Lcom/google/android/gms/internal/zzaqa;

    return-void
.end method

.method public static final initialize(Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/zzaqe;->zzDE()Lcom/google/android/gms/internal/zzaqb;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzaqb;->initialize(Landroid/content/Context;)V

    return-void
.end method
