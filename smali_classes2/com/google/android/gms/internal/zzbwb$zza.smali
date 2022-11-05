.class public final Lcom/google/android/gms/internal/zzbwb$zza;
.super Lcom/google/android/gms/internal/zzbvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbwb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzbvc",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final zzcqJ:Lcom/google/android/gms/internal/zzbvp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbvp",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final zzcrc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbwb$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbvp;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbvp",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbwb$zzb;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbvc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbwb$zza;->zzcqJ:Lcom/google/android/gms/internal/zzbvp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbwb$zza;->zzcrc:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbvp;Ljava/util/Map;Lcom/google/android/gms/internal/zzbwb$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbwb$zza;-><init>(Lcom/google/android/gms/internal/zzbvp;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbwj;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadP()Lcom/google/android/gms/internal/zzbwj;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadN()Lcom/google/android/gms/internal/zzbwj;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwb$zza;->zzcrc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbwb$zzb;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzbwb$zzb;->zzaT(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzbwb$zzb;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzbwj;->zzjV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbwj;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzbwb$zzb;->zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadO()Lcom/google/android/gms/internal/zzbwj;

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbwh;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->zzadF()Lcom/google/android/gms/internal/zzbwi;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzbwi;->zzcsI:Lcom/google/android/gms/internal/zzbwi;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->nextNull()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwb$zza;->zzcqJ:Lcom/google/android/gms/internal/zzbvp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbvp;->zzady()Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->beginObject()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->nextName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwb$zza;->zzcrc:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbwb$zzb;

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/zzbwb$zzb;->zzcre:Z

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->skipValue()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzbuz;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbuz;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzbwb$zzb;->zza(Lcom/google/android/gms/internal/zzbwh;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->endObject()V

    move-object v0, v1

    goto :goto_0
.end method
