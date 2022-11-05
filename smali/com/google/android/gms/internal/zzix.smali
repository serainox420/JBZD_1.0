.class Lcom/google/android/gms/internal/zzix;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzix$zza;
    }
.end annotation


# instance fields
.field private final zzth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzix$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzix;->zzth:Ljava/util/List;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzix;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzix;->zzth:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method zza(Lcom/google/android/gms/internal/zziy;)V
    .locals 4

    sget-object v1, Lcom/google/android/gms/internal/zzpo;->zzXC:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzix;->zzth:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzix$zza;

    new-instance v3, Lcom/google/android/gms/internal/zzix$7;

    invoke-direct {v3, p0, v0, p1}, Lcom/google/android/gms/internal/zzix$7;-><init>(Lcom/google/android/gms/internal/zzix;Lcom/google/android/gms/internal/zzix$zza;Lcom/google/android/gms/internal/zziy;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzix;->zzth:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method zzc(Lcom/google/android/gms/ads/internal/zzm;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzix$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzix$1;-><init>(Lcom/google/android/gms/internal/zzix;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/internal/zzep;)V

    new-instance v0, Lcom/google/android/gms/internal/zzix$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzix$2;-><init>(Lcom/google/android/gms/internal/zzix;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/internal/zzev;)V

    new-instance v0, Lcom/google/android/gms/internal/zzix$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzix$3;-><init>(Lcom/google/android/gms/internal/zzix;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/internal/zzle;)V

    new-instance v0, Lcom/google/android/gms/internal/zzix$4;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzix$4;-><init>(Lcom/google/android/gms/internal/zzix;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/internal/zzgp;)V

    new-instance v0, Lcom/google/android/gms/internal/zzix$5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzix$5;-><init>(Lcom/google/android/gms/internal/zzix;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/internal/zzeo;)V

    new-instance v0, Lcom/google/android/gms/internal/zzix$6;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzix$6;-><init>(Lcom/google/android/gms/internal/zzix;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzm;->zza(Lcom/google/android/gms/internal/zznw;)V

    return-void
.end method
