.class abstract Lcom/google/android/gms/wearable/internal/zzcw$zzb;
.super Lcom/google/android/gms/wearable/internal/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/zzcw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/wearable/internal/zza;"
    }
.end annotation


# instance fields
.field private zzahW:Lcom/google/android/gms/internal/zzaad$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaad$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzcw$zzb;->zzahW:Lcom/google/android/gms/internal/zzaad$zzb;

    return-void
.end method


# virtual methods
.method public zzaa(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcw$zzb;->zzahW:Lcom/google/android/gms/internal/zzaad$zzb;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzaad$zzb;->setResult(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcw$zzb;->zzahW:Lcom/google/android/gms/internal/zzaad$zzb;

    :cond_0
    return-void
.end method
