.class Lcom/google/android/gms/internal/zzayr;
.super Ljava/lang/Object;


# direct methods
.method static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzabh;)Lcom/google/android/gms/internal/zzayj;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Lcom/google/android/gms/internal/zzabh",
            "<TC;>;)",
            "Lcom/google/android/gms/internal/zzayj",
            "<TC;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/nearby/messages/StatusCallback;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzayo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzayo;-><init>(Lcom/google/android/gms/internal/zzabh;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/nearby/messages/MessageListener;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzayk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzayk;-><init>(Lcom/google/android/gms/internal/zzabh;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown callback of type "

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
