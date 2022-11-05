.class public Lcom/google/android/gms/internal/zzbna;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Lcom/google/firebase/auth/a;)Lcom/google/android/gms/internal/zzbmx;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/google/firebase/auth/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/firebase/auth/g;

    invoke-static {p0}, Lcom/google/firebase/auth/g;->a(Lcom/google/firebase/auth/g;)Lcom/google/android/gms/internal/zzbmx;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/google/firebase/auth/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/firebase/auth/c;

    invoke-static {p0}, Lcom/google/firebase/auth/c;->a(Lcom/google/firebase/auth/c;)Lcom/google/android/gms/internal/zzbmx;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-class v0, Lcom/google/firebase/auth/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p0, Lcom/google/firebase/auth/h;

    invoke-static {p0}, Lcom/google/firebase/auth/h;->a(Lcom/google/firebase/auth/h;)Lcom/google/android/gms/internal/zzbmx;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-class v0, Lcom/google/firebase/auth/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p0, Lcom/google/firebase/auth/f;

    invoke-static {p0}, Lcom/google/firebase/auth/f;->a(Lcom/google/firebase/auth/f;)Lcom/google/android/gms/internal/zzbmx;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported credential type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
