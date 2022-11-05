.class Lcom/google/android/gms/internal/zzapq$zzb;
.super Lcom/google/android/gms/internal/zzape$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzapq;
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
            "Lcom/google/android/gms/fitness/result/SessionStopResult;",
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
            "Lcom/google/android/gms/fitness/result/SessionStopResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzape$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapq$zzb;->zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/internal/zzapq$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzapq$zzb;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/fitness/result/SessionStopResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapq$zzb;->zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzaad$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method
