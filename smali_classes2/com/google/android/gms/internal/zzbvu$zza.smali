.class final Lcom/google/android/gms/internal/zzbvu$zza;
.super Lcom/google/android/gms/internal/zzbvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbvu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzbvc",
        "<",
        "Ljava/util/Collection",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final zzcqI:Lcom/google/android/gms/internal/zzbvc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbvc",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final zzcqJ:Lcom/google/android/gms/internal/zzbvp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbvp",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbuk;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzbvc;Lcom/google/android/gms/internal/zzbvp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbuk;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/zzbvc",
            "<TE;>;",
            "Lcom/google/android/gms/internal/zzbvp",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbvc;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzbwe;

    invoke-direct {v0, p1, p3, p2}, Lcom/google/android/gms/internal/zzbwe;-><init>(Lcom/google/android/gms/internal/zzbuk;Lcom/google/android/gms/internal/zzbvc;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbvu$zza;->zzcqI:Lcom/google/android/gms/internal/zzbvc;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbvu$zza;->zzcqJ:Lcom/google/android/gms/internal/zzbvp;

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbvu$zza;->zza(Lcom/google/android/gms/internal/zzbwj;Ljava/util/Collection;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbwj;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbwj;",
            "Ljava/util/Collection",
            "<TE;>;)V"
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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadL()Lcom/google/android/gms/internal/zzbwj;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbvu$zza;->zzcqI:Lcom/google/android/gms/internal/zzbvc;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/zzbvc;->zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadM()Lcom/google/android/gms/internal/zzbwj;

    goto :goto_0
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbvu$zza;->zzj(Lcom/google/android/gms/internal/zzbwh;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public zzj(Lcom/google/android/gms/internal/zzbwh;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbwh;",
            ")",
            "Ljava/util/Collection",
            "<TE;>;"
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
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvu$zza;->zzcqJ:Lcom/google/android/gms/internal/zzbvp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbvp;->zzady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->beginArray()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbvu$zza;->zzcqI:Lcom/google/android/gms/internal/zzbvc;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzbvc;->zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->endArray()V

    goto :goto_0
.end method
