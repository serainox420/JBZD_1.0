.class public final Lcom/google/android/gms/internal/zzbvy;
.super Lcom/google/android/gms/internal/zzbwj;


# static fields
.field private static final zzcqN:Ljava/io/Writer;

.field private static final zzcqO:Lcom/google/android/gms/internal/zzbuw;


# instance fields
.field private final zzcqM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbuq;",
            ">;"
        }
    .end annotation
.end field

.field private zzcqP:Ljava/lang/String;

.field private zzcqQ:Lcom/google/android/gms/internal/zzbuq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbvy$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbvy$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbvy;->zzcqN:Ljava/io/Writer;

    new-instance v0, Lcom/google/android/gms/internal/zzbuw;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbuw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbvy;->zzcqO:Lcom/google/android/gms/internal/zzbuw;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbvy;->zzcqN:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbwj;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqM:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/internal/zzbus;->zzcpt:Lcom/google/android/gms/internal/zzbus;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqQ:Lcom/google/android/gms/internal/zzbuq;

    return-void
.end method

.method private zzadK()Lcom/google/android/gms/internal/zzbuq;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqM:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqM:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbuq;

    return-object v0
.end method

.method private zzd(Lcom/google/android/gms/internal/zzbuq;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqP:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbuq;->zzadn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbvy;->zzaec()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbvy;->zzadK()Lcom/google/android/gms/internal/zzbuq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbut;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqP:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzbut;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbuq;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqP:Ljava/lang/String;

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqQ:Lcom/google/android/gms/internal/zzbuq;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbvy;->zzadK()Lcom/google/android/gms/internal/zzbuq;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzbun;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/google/android/gms/internal/zzbun;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbun;->zzc(Lcom/google/android/gms/internal/zzbuq;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqM:Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/zzbvy;->zzcqO:Lcom/google/android/gms/internal/zzbuw;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public zza(Ljava/lang/Number;)Lcom/google/android/gms/internal/zzbwj;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbvy;->zzadP()Lcom/google/android/gms/internal/zzbwj;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbvy;->isLenient()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "JSON forbids NaN and infinities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzbuw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbuw;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbvy;->zzd(Lcom/google/android/gms/internal/zzbuq;)V

    goto :goto_0
.end method

.method public zzaY(J)Lcom/google/android/gms/internal/zzbwj;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbuw;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbuw;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbvy;->zzd(Lcom/google/android/gms/internal/zzbuq;)V

    return-object p0
.end method

.method public zzadJ()Lcom/google/android/gms/internal/zzbuq;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqM:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Expected one JSON element but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqQ:Lcom/google/android/gms/internal/zzbuq;

    return-object v0
.end method

.method public zzadL()Lcom/google/android/gms/internal/zzbwj;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbun;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbun;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbvy;->zzd(Lcom/google/android/gms/internal/zzbuq;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqM:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public zzadM()Lcom/google/android/gms/internal/zzbwj;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqP:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbvy;->zzadK()Lcom/google/android/gms/internal/zzbuq;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/zzbun;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqM:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqM:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public zzadN()Lcom/google/android/gms/internal/zzbwj;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbut;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbut;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbvy;->zzd(Lcom/google/android/gms/internal/zzbuq;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqM:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public zzadO()Lcom/google/android/gms/internal/zzbwj;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqP:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbvy;->zzadK()Lcom/google/android/gms/internal/zzbuq;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/zzbut;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqM:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqM:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public zzadP()Lcom/google/android/gms/internal/zzbwj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzbus;->zzcpt:Lcom/google/android/gms/internal/zzbus;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbvy;->zzd(Lcom/google/android/gms/internal/zzbuq;)V

    return-object p0
.end method

.method public zzbl(Z)Lcom/google/android/gms/internal/zzbwj;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbuw;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbuw;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbvy;->zzd(Lcom/google/android/gms/internal/zzbuq;)V

    return-object p0
.end method

.method public zzjV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbwj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqP:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbvy;->zzadK()Lcom/google/android/gms/internal/zzbuq;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/zzbut;

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbvy;->zzcqP:Ljava/lang/String;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public zzjW(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbwj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbvy;->zzadP()Lcom/google/android/gms/internal/zzbwj;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbuw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbuw;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbvy;->zzd(Lcom/google/android/gms/internal/zzbuq;)V

    goto :goto_0
.end method
