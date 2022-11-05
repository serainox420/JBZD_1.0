.class public final Lcom/google/android/gms/internal/zzbvw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbvd;


# instance fields
.field private final zzcpc:Lcom/google/android/gms/internal/zzbvk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbvk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbvw;->zzcpc:Lcom/google/android/gms/internal/zzbvk;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/zzbvk;Lcom/google/android/gms/internal/zzbuk;Lcom/google/android/gms/internal/zzbwg;Lcom/google/android/gms/internal/zzbve;)Lcom/google/android/gms/internal/zzbvc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbvk;",
            "Lcom/google/android/gms/internal/zzbuk;",
            "Lcom/google/android/gms/internal/zzbwg",
            "<*>;",
            "Lcom/google/android/gms/internal/zzbve;",
            ")",
            "Lcom/google/android/gms/internal/zzbvc",
            "<*>;"
        }
    .end annotation

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzbve;->value()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/zzbvc;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbwg;->zzq(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzbwg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbvk;->zzb(Lcom/google/android/gms/internal/zzbwg;)Lcom/google/android/gms/internal/zzbvp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbvp;->zzady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbvc;

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/google/android/gms/internal/zzbvd;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbwg;->zzq(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzbwg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbvk;->zzb(Lcom/google/android/gms/internal/zzbwg;)Lcom/google/android/gms/internal/zzbvp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbvp;->zzady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbvd;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzbvd;->zza(Lcom/google/android/gms/internal/zzbuk;Lcom/google/android/gms/internal/zzbwg;)Lcom/google/android/gms/internal/zzbvc;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbuk;Lcom/google/android/gms/internal/zzbwg;)Lcom/google/android/gms/internal/zzbvc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzbuk;",
            "Lcom/google/android/gms/internal/zzbwg",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzbvc",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbwg;->zzadQ()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/zzbve;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbve;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbvw;->zzcpc:Lcom/google/android/gms/internal/zzbvk;

    invoke-static {v1, p1, p2, v0}, Lcom/google/android/gms/internal/zzbvw;->zza(Lcom/google/android/gms/internal/zzbvk;Lcom/google/android/gms/internal/zzbuk;Lcom/google/android/gms/internal/zzbwg;Lcom/google/android/gms/internal/zzbve;)Lcom/google/android/gms/internal/zzbvc;

    move-result-object v0

    goto :goto_0
.end method
