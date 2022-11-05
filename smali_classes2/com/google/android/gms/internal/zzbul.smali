.class public final Lcom/google/android/gms/internal/zzbul;
.super Ljava/lang/Object;


# instance fields
.field private final zzcpb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbvd;",
            ">;"
        }
    .end annotation
.end field

.field private zzcpl:Lcom/google/android/gms/internal/zzbvl;

.field private zzcpm:Lcom/google/android/gms/internal/zzbva;

.field private zzcpn:Lcom/google/android/gms/internal/zzbuj;

.field private final zzcpo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/zzbum",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzcpp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbvd;",
            ">;"
        }
    .end annotation
.end field

.field private zzcpq:I

.field private zzcpr:I

.field private zzcps:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/zzbvl;->zzcpV:Lcom/google/android/gms/internal/zzbvl;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcpl:Lcom/google/android/gms/internal/zzbvl;

    sget-object v0, Lcom/google/android/gms/internal/zzbva;->zzcpw:Lcom/google/android/gms/internal/zzbva;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcpm:Lcom/google/android/gms/internal/zzbva;

    sget-object v0, Lcom/google/android/gms/internal/zzbui;->zzcoT:Lcom/google/android/gms/internal/zzbui;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcpn:Lcom/google/android/gms/internal/zzbuj;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcpo:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcpb:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcpp:Ljava/util/List;

    iput v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcpq:I

    iput v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcpr:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcps:Z

    return-void
.end method

.method private zza(Ljava/lang/String;IILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbvd;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzbuf;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbuf;-><init>(Ljava/lang/String;)V

    :goto_0
    const-class v1, Ljava/util/Date;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbwg;->zzq(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzbwg;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbvb;->zza(Lcom/google/android/gms/internal/zzbwg;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbvd;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbwg;->zzq(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzbwg;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbvb;->zza(Lcom/google/android/gms/internal/zzbwg;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbvd;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Date;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbwg;->zzq(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzbwg;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbvb;->zza(Lcom/google/android/gms/internal/zzbwg;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbvd;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    if-eq p2, v2, :cond_0

    if-eq p3, v2, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbuf;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/zzbuf;-><init>(II)V

    goto :goto_0
.end method


# virtual methods
.method public zza(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbul;
    .locals 2

    instance-of v0, p2, Lcom/google/android/gms/internal/zzbuy;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/android/gms/internal/zzbup;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/android/gms/internal/zzbum;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/android/gms/internal/zzbvc;

    if-eqz v0, :cond_5

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzbvi;->zzax(Z)V

    instance-of v0, p2, Lcom/google/android/gms/internal/zzbum;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcpo:Ljava/util/Map;

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/zzbum;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    instance-of v0, p2, Lcom/google/android/gms/internal/zzbuy;

    if-nez v0, :cond_2

    instance-of v0, p2, Lcom/google/android/gms/internal/zzbup;

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/zzbwg;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzbwg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcpb:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzbvb;->zzb(Lcom/google/android/gms/internal/zzbwg;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbvd;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    instance-of v0, p2, Lcom/google/android/gms/internal/zzbvc;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcpb:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbwg;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzbwg;

    move-result-object v1

    check-cast p2, Lcom/google/android/gms/internal/zzbvc;

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/zzbwf;->zza(Lcom/google/android/gms/internal/zzbwg;Lcom/google/android/gms/internal/zzbvc;)Lcom/google/android/gms/internal/zzbvd;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs zza([Lcom/google/android/gms/internal/zzbug;)Lcom/google/android/gms/internal/zzbul;
    .locals 5

    const/4 v4, 0x1

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbul;->zzcpl:Lcom/google/android/gms/internal/zzbvl;

    invoke-virtual {v3, v2, v4, v4}, Lcom/google/android/gms/internal/zzbvl;->zza(Lcom/google/android/gms/internal/zzbug;ZZ)Lcom/google/android/gms/internal/zzbvl;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbul;->zzcpl:Lcom/google/android/gms/internal/zzbvl;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public zzadg()Lcom/google/android/gms/internal/zzbul;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcps:Z

    return-object p0
.end method

.method public zzadh()Lcom/google/android/gms/internal/zzbuk;
    .locals 12

    const/4 v4, 0x0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcpb:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcpp:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcpq:I

    iget v2, p0, Lcom/google/android/gms/internal/zzbul;->zzcpr:I

    invoke-direct {p0, v0, v1, v2, v11}, Lcom/google/android/gms/internal/zzbul;->zza(Ljava/lang/String;IILjava/util/List;)V

    new-instance v0, Lcom/google/android/gms/internal/zzbuk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbul;->zzcpl:Lcom/google/android/gms/internal/zzbvl;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbul;->zzcpn:Lcom/google/android/gms/internal/zzbuj;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbul;->zzcpo:Ljava/util/Map;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/zzbul;->zzcps:Z

    iget-object v10, p0, Lcom/google/android/gms/internal/zzbul;->zzcpm:Lcom/google/android/gms/internal/zzbva;

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/zzbuk;-><init>(Lcom/google/android/gms/internal/zzbvl;Lcom/google/android/gms/internal/zzbuj;Ljava/util/Map;ZZZZZZLcom/google/android/gms/internal/zzbva;Ljava/util/List;)V

    return-object v0
.end method

.method public varargs zzf([I)Lcom/google/android/gms/internal/zzbul;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcpl:Lcom/google/android/gms/internal/zzbvl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbvl;->zzg([I)Lcom/google/android/gms/internal/zzbvl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbul;->zzcpl:Lcom/google/android/gms/internal/zzbvl;

    return-object p0
.end method
