.class public Lcom/google/android/gms/internal/zzbmf;
.super Lcom/google/android/gms/internal/zzbvc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbvc",
        "<",
        "Lcom/google/android/gms/internal/zzbmv;",
        ">;"
    }
.end annotation


# instance fields
.field private zzbYe:Lcom/google/android/gms/internal/zzbuk;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbvc;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbuk;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbuk;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbmf;->zzbYe:Lcom/google/android/gms/internal/zzbuk;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbwj;Lcom/google/android/gms/internal/zzbmv;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadP()Lcom/google/android/gms/internal/zzbwj;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmf;->zzbYe:Lcom/google/android/gms/internal/zzbuk;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbuk;->zzj(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzbvc;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadL()Lcom/google/android/gms/internal/zzbwj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbmv;->zzWk()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, p1, v0}, Lcom/google/android/gms/internal/zzbvc;->zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadM()Lcom/google/android/gms/internal/zzbwj;

    goto :goto_0
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/android/gms/internal/zzbmv;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbmf;->zza(Lcom/google/android/gms/internal/zzbwj;Lcom/google/android/gms/internal/zzbmv;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbmf;->zzd(Lcom/google/android/gms/internal/zzbwh;)Lcom/google/android/gms/internal/zzbmv;

    move-result-object v0

    return-object v0
.end method

.method public zzd(Lcom/google/android/gms/internal/zzbwh;)Lcom/google/android/gms/internal/zzbmv;
    .locals 4
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
    new-instance v1, Lcom/google/android/gms/internal/zzbmv;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzbmv;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmf;->zzbYe:Lcom/google/android/gms/internal/zzbuk;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzbuk;->zzj(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzbvc;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->beginArray()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzbvc;->zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbmv;->zzWk()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->endArray()V

    move-object v0, v1

    goto :goto_0
.end method
