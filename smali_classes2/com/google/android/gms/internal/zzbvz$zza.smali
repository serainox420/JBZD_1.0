.class final Lcom/google/android/gms/internal/zzbvz$zza;
.super Lcom/google/android/gms/internal/zzbvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbvz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzbvc",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final zzcqJ:Lcom/google/android/gms/internal/zzbvp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbvp",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final zzcqS:Lcom/google/android/gms/internal/zzbvc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbvc",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final zzcqT:Lcom/google/android/gms/internal/zzbvc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbvc",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic zzcqU:Lcom/google/android/gms/internal/zzbvz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbvz;Lcom/google/android/gms/internal/zzbuk;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzbvc;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzbvc;Lcom/google/android/gms/internal/zzbvp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbuk;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/zzbvc",
            "<TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/zzbvc",
            "<TV;>;",
            "Lcom/google/android/gms/internal/zzbvp",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbvz$zza;->zzcqU:Lcom/google/android/gms/internal/zzbvz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbvc;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzbwe;

    invoke-direct {v0, p2, p4, p3}, Lcom/google/android/gms/internal/zzbwe;-><init>(Lcom/google/android/gms/internal/zzbuk;Lcom/google/android/gms/internal/zzbvc;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbvz$zza;->zzcqS:Lcom/google/android/gms/internal/zzbvc;

    new-instance v0, Lcom/google/android/gms/internal/zzbwe;

    invoke-direct {v0, p2, p6, p5}, Lcom/google/android/gms/internal/zzbwe;-><init>(Lcom/google/android/gms/internal/zzbuk;Lcom/google/android/gms/internal/zzbvc;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbvz$zza;->zzcqT:Lcom/google/android/gms/internal/zzbvc;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzbvz$zza;->zzcqJ:Lcom/google/android/gms/internal/zzbvp;

    return-void
.end method

.method private zze(Lcom/google/android/gms/internal/zzbuq;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbuq;->zzadm()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbuq;->zzadq()Lcom/google/android/gms/internal/zzbuw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbuw;->zzadt()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbuw;->zzadi()Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbuw;->zzads()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbuw;->getAsBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbuw;->zzadu()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbuw;->zzadj()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbuq;->zzadn()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "null"

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbvz$zza;->zza(Lcom/google/android/gms/internal/zzbwj;Ljava/util/Map;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbwj;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbwj;",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

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
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvz$zza;->zzcqU:Lcom/google/android/gms/internal/zzbvz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbvz;->zza(Lcom/google/android/gms/internal/zzbvz;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadN()Lcom/google/android/gms/internal/zzbwj;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzbwj;->zzjV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbwj;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbvz$zza;->zzcqT:Lcom/google/android/gms/internal/zzbvc;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/zzbvc;->zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadO()Lcom/google/android/gms/internal/zzbwj;

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzbvz$zza;->zzcqS:Lcom/google/android/gms/internal/zzbvc;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/zzbvc;->zzaO(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbuq;->zzadk()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbuq;->zzadl()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_3
    or-int/2addr v0, v1

    move v1, v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadL()Lcom/google/android/gms/internal/zzbwj;

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadL()Lcom/google/android/gms/internal/zzbwj;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbuq;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzbvr;->zzb(Lcom/google/android/gms/internal/zzbuq;Lcom/google/android/gms/internal/zzbwj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvz$zza;->zzcqT:Lcom/google/android/gms/internal/zzbvc;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzbvc;->zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadM()Lcom/google/android/gms/internal/zzbwj;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadM()Lcom/google/android/gms/internal/zzbwj;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadN()Lcom/google/android/gms/internal/zzbwj;

    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbuq;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbvz$zza;->zze(Lcom/google/android/gms/internal/zzbuq;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbwj;->zzjV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbwj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvz$zza;->zzcqT:Lcom/google/android/gms/internal/zzbvc;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzbvc;->zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadO()Lcom/google/android/gms/internal/zzbwj;

    goto/16 :goto_0
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbvz$zza;->zzl(Lcom/google/android/gms/internal/zzbwh;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public zzl(Lcom/google/android/gms/internal/zzbwh;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbwh;",
            ")",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->zzadF()Lcom/google/android/gms/internal/zzbwi;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/zzbwi;->zzcsI:Lcom/google/android/gms/internal/zzbwi;

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->nextNull()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvz$zza;->zzcqJ:Lcom/google/android/gms/internal/zzbvp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbvp;->zzady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v2, Lcom/google/android/gms/internal/zzbwi;->zzcsA:Lcom/google/android/gms/internal/zzbwi;

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->beginArray()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->beginArray()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbvz$zza;->zzcqS:Lcom/google/android/gms/internal/zzbvc;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzbvc;->zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbvz$zza;->zzcqT:Lcom/google/android/gms/internal/zzbvc;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzbvc;->zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzbuz;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "duplicate key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbuz;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->endArray()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->endArray()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->beginObject()V

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/google/android/gms/internal/zzbvm;->zzcqg:Lcom/google/android/gms/internal/zzbvm;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzbvm;->zzi(Lcom/google/android/gms/internal/zzbwh;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbvz$zza;->zzcqS:Lcom/google/android/gms/internal/zzbvc;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzbvc;->zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbvz$zza;->zzcqT:Lcom/google/android/gms/internal/zzbvc;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzbvc;->zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzbuz;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "duplicate key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbuz;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->endObject()V

    goto/16 :goto_0
.end method
