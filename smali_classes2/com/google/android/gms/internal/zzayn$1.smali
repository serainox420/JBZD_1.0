.class final Lcom/google/android/gms/internal/zzayn$1;
.super Lcom/google/android/gms/internal/zzaym;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzayn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaym",
        "<",
        "Lcom/google/android/gms/nearby/messages/PublishCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaym;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/messages/PublishCallback;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/nearby/messages/PublishCallback;->onExpired()V

    return-void
.end method

.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/messages/PublishCallback;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzayn$1;->zza(Lcom/google/android/gms/nearby/messages/PublishCallback;)V

    return-void
.end method
