.class public Lcom/google/android/gms/internal/zzdh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdh$zza;
    }
.end annotation


# instance fields
.field private final zzyn:I

.field private final zzyo:I

.field private final zzyp:I

.field private final zzyq:Lcom/google/android/gms/internal/zzdg;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzdj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdh;->zzyq:Lcom/google/android/gms/internal/zzdg;

    iput p1, p0, Lcom/google/android/gms/internal/zzdh;->zzyo:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/gms/internal/zzdh;->zzyn:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzdh;->zzyp:I

    return-void
.end method


# virtual methods
.method zzG(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdh;->zzeu()Lcom/google/android/gms/internal/zzdh$zza;

    move-result-object v2

    new-instance v3, Ljava/util/PriorityQueue;

    iget v0, p0, Lcom/google/android/gms/internal/zzdh;->zzyo:I

    new-instance v4, Lcom/google/android/gms/internal/zzdh$1;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzdh$1;-><init>(Lcom/google/android/gms/internal/zzdh;)V

    invoke-direct {v3, v0, v4}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_2

    aget-object v4, v1, v0

    invoke-static {v4}, Lcom/google/android/gms/internal/zzdi;->zzI(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-nez v5, :cond_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v5, p0, Lcom/google/android/gms/internal/zzdh;->zzyo:I

    iget v6, p0, Lcom/google/android/gms/internal/zzdh;->zzyn:I

    invoke-static {v4, v5, v6, v3}, Lcom/google/android/gms/internal/zzdk;->zza([Ljava/lang/String;IILjava/util/PriorityQueue;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdk$zza;

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzdh;->zzyq:Lcom/google/android/gms/internal/zzdg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzdk$zza;->zzyu:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzdg;->zzF(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzdh$zza;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "Error while writing hash to byteStream"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdh$zza;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public zza(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzdh;->zzG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zzeu()Lcom/google/android/gms/internal/zzdh$zza;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzdh$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdh$zza;-><init>()V

    return-object v0
.end method
