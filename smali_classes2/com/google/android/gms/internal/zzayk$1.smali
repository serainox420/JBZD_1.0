.class Lcom/google/android/gms/internal/zzayk$1;
.super Lcom/google/android/gms/internal/zzaym;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzayk;->zzL(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaym",
        "<",
        "Lcom/google/android/gms/nearby/messages/MessageListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbBq:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzayk;Ljava/util/List;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzayk$1;->zzbBq:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaym;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/nearby/messages/MessageListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayk$1;->zzbBq:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzy;->zza(Ljava/lang/Iterable;Lcom/google/android/gms/nearby/messages/MessageListener;)V

    return-void
.end method

.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/messages/MessageListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzayk$1;->zzb(Lcom/google/android/gms/nearby/messages/MessageListener;)V

    return-void
.end method
