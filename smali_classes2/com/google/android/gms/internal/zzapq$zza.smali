.class Lcom/google/android/gms/internal/zzapq$zza;
.super Lcom/google/android/gms/internal/zzapd$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzapq;
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
            "Lcom/google/android/gms/fitness/result/SessionReadResult;",
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
            "Lcom/google/android/gms/fitness/result/SessionReadResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapd$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapq$zza;->zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/internal/zzapq$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzapq$zza;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/fitness/result/SessionReadResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapq$zza;->zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzaad$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method
