.class Lcom/google/android/gms/internal/zzapp$zzb;
.super Lcom/google/android/gms/internal/zzapf$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzapp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field private final zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaVg:Lcom/google/android/gms/internal/zzapp$zza;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/internal/zzapp$zza;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/internal/zzapp$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapf$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapp$zzb;->zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzapp$zzb;->zzaVg:Lcom/google/android/gms/internal/zzapp$zza;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/internal/zzapp$zza;Lcom/google/android/gms/internal/zzapp$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzapp$zzb;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/internal/zzapp$zza;)V

    return-void
.end method


# virtual methods
.method public zzp(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapp$zzb;->zzaVg:Lcom/google/android/gms/internal/zzapp$zza;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapp$zzb;->zzaVg:Lcom/google/android/gms/internal/zzapp$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzapp$zza;->zzCJ()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapp$zzb;->zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzaad$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method
