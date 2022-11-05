.class Lcom/google/android/gms/internal/zzapo$zza;
.super Lcom/google/android/gms/internal/zzapa$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzapo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzaad$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapa$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapo$zza;->zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/internal/zzapo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzapo$zza;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapo$zza;->zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzaad$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method
