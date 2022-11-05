.class public Lcom/google/android/gms/internal/zziz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final zzJb:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/internal/zzja;",
            ">;"
        }
    .end annotation
.end field

.field private zzJc:Lcom/google/android/gms/internal/zziw;

.field private final zzyE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzja;",
            "Lcom/google/android/gms/internal/zzjb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzyE:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzJb:Ljava/util/LinkedList;

    return-void
.end method

.method private static zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzja;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->zzak(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private zzai(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "\u0000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v1, v2

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/lang/String;

    aget-object v4, v0, v1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v3, v0, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v0, v2, [Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private zzaj(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzDj:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v1

    const-string v2, "InterstitialAdPool.isExcludedAdUnit"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzpe;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static zzak(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "([^/]+/[0-9]+).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static zzc(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "/"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    array-length v2, v0

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    aget-object v0, v0, v3

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zziz;->zzc(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static zzc(Lcom/google/android/gms/internal/zzec;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzec;->zzzd:Landroid/os/Bundle;

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzec;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private zzgw()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzJb:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzja;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzja;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    :goto_1
    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method static zzj(Lcom/google/android/gms/internal/zzec;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzec;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzec;->extras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzec;->zzzd:Landroid/os/Bundle;

    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method static zzk(Lcom/google/android/gms/internal/zzec;)Lcom/google/android/gms/internal/zzec;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/zziz;->zzn(Lcom/google/android/gms/internal/zzec;)Lcom/google/android/gms/internal/zzec;

    move-result-object v0

    const-string v1, "_skipMediation"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zziz;->zzc(Lcom/google/android/gms/internal/zzec;Ljava/lang/String;)V

    return-object v0
.end method

.method static zzl(Lcom/google/android/gms/internal/zzec;)Z
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/zziz;->zzj(Lcom/google/android/gms/internal/zzec;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "_skipMediation"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static zzm(Lcom/google/android/gms/internal/zzec;)Lcom/google/android/gms/internal/zzec;
    .locals 7

    invoke-static {p0}, Lcom/google/android/gms/internal/zziz;->zzn(Lcom/google/android/gms/internal/zzec;)Lcom/google/android/gms/internal/zzec;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzDf:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    iget-object v5, v1, Lcom/google/android/gms/internal/zzec;->zzzd:Landroid/os/Bundle;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/zziz;->zzc(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string v5, "com.google.ads.mediation.admob.AdMobAdapter/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/internal/zzec;->extras:Landroid/os/Bundle;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/zziz;->zzc(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static zzn(Lcom/google/android/gms/internal/zzec;)Lcom/google/android/gms/internal/zzec;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzec;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/google/android/gms/internal/zzec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzec;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    sget-object v1, Lcom/google/android/gms/internal/zzgd;->zzCX:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzec;->zzi(Lcom/google/android/gms/internal/zzec;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method flush()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzJb:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzJb:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzja;

    iget-object v1, p0, Lcom/google/android/gms/internal/zziz;->zzyE:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzjb;

    const-string v2, "Flushing interstitial queue for %s."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zziz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzja;)V

    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjb;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzjb;->zzo(Lcom/google/android/gms/internal/zzec;)Lcom/google/android/gms/internal/zzjb$zza;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzjb$zza;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzm;->zzcm()V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zziz;->zzyE:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method restore()V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzJc:Lcom/google/android/gms/internal/zziw;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzJc:Lcom/google/android/gms/internal/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zziw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.gms.ads.internal.interstitial.InterstitialAdPool"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zziz;->flush()V

    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, "PoolKeys"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzje;->zzal(Ljava/lang/String;)Lcom/google/android/gms/internal/zzje;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzja;

    iget-object v6, v0, Lcom/google/android/gms/internal/zzje;->zzum:Lcom/google/android/gms/internal/zzec;

    iget-object v7, v0, Lcom/google/android/gms/internal/zzje;->zzts:Ljava/lang/String;

    iget v8, v0, Lcom/google/android/gms/internal/zzje;->zzJf:I

    invoke-direct {v1, v6, v7, v8}, Lcom/google/android/gms/internal/zzja;-><init>(Lcom/google/android/gms/internal/zzec;Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/zziz;->zzyE:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Lcom/google/android/gms/internal/zzjb;

    iget-object v7, v0, Lcom/google/android/gms/internal/zzje;->zzum:Lcom/google/android/gms/internal/zzec;

    iget-object v8, v0, Lcom/google/android/gms/internal/zzje;->zzts:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/gms/internal/zzje;->zzJf:I

    invoke-direct {v6, v7, v8, v0}, Lcom/google/android/gms/internal/zzjb;-><init>(Lcom/google/android/gms/internal/zzec;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzyE:Ljava/util/Map;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzja;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Restored interstitial queue for %s."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zziz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzja;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcQ()Lcom/google/android/gms/internal/zzpe;

    move-result-object v1

    const-string v2, "InterstitialAdPool.restore"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzpe;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v1, "Malformed preferences value for InterstitialAdPool."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzyE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzJb:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    const-string v0, "PoolKeys"

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zziz;->zzai(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    move v1, v2

    :goto_3
    if-ge v1, v5, :cond_0

    aget-object v0, v3, v1

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzja;

    iget-object v2, p0, Lcom/google/android/gms/internal/zziz;->zzyE:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zziz;->zzJb:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method save()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzJc:Lcom/google/android/gms/internal/zziw;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzJc:Lcom/google/android/gms/internal/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zziw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.gms.ads.internal.interstitial.InterstitialAdPool"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzyE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzja;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzjb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjb;->zzgB()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/google/android/gms/internal/zzje;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/zzje;-><init>(Lcom/google/android/gms/internal/zzjb;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzje;->zzgL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzja;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "Saved interstitial queue for %s."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zziz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzja;)V

    goto :goto_1

    :cond_2
    const-string v0, "PoolKeys"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zziz;->zzgw()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method zza(Lcom/google/android/gms/internal/zzec;Ljava/lang/String;)Lcom/google/android/gms/internal/zzjb$zza;
    .locals 12

    const/4 v3, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zziz;->zzaj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzJc:Lcom/google/android/gms/internal/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zziw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzni$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzni$zza;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzni$zza;->zzjC()Lcom/google/android/gms/internal/zzni;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/zzni;->zzUQ:I

    invoke-static {p1}, Lcom/google/android/gms/internal/zziz;->zzm(Lcom/google/android/gms/internal/zzec;)Lcom/google/android/gms/internal/zzec;

    move-result-object v4

    invoke-static {p2}, Lcom/google/android/gms/internal/zziz;->zzak(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/google/android/gms/internal/zzja;

    invoke-direct {v5, v4, v2, v1}, Lcom/google/android/gms/internal/zzja;-><init>(Lcom/google/android/gms/internal/zzec;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzyE:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzjb;

    if-nez v0, :cond_7

    const-string v0, "Interstitial pool created at %s."

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/zziz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzja;)V

    new-instance v0, Lcom/google/android/gms/internal/zzjb;

    invoke-direct {v0, v4, v2, v1}, Lcom/google/android/gms/internal/zzjb;-><init>(Lcom/google/android/gms/internal/zzec;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zziz;->zzyE:Ljava/util/Map;

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzJb:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzJb:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzjb;->zzgA()V

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzJb:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzDg:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v1, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzJb:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzja;

    iget-object v1, p0, Lcom/google/android/gms/internal/zziz;->zzyE:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzjb;

    const-string v6, "Evicting interstitial queue for %s."

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/zziz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzja;)V

    :goto_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjb;->size()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzjb;->zzo(Lcom/google/android/gms/internal/zzec;)Lcom/google/android/gms/internal/zzjb$zza;

    move-result-object v6

    iget-boolean v7, v6, Lcom/google/android/gms/internal/zzjb$zza;->zzJl:Z

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzjc;->zzgC()Lcom/google/android/gms/internal/zzjc;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzjc;->zzgE()V

    :cond_1
    iget-object v6, v6, Lcom/google/android/gms/internal/zzjb$zza;->zzJh:Lcom/google/android/gms/ads/internal/zzm;

    invoke-virtual {v6}, Lcom/google/android/gms/ads/internal/zzm;->zzcm()V

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zziz;->zzyE:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    :goto_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzjb;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzjb;->zzo(Lcom/google/android/gms/internal/zzec;)Lcom/google/android/gms/internal/zzjb$zza;

    move-result-object v1

    iget-boolean v0, v1, Lcom/google/android/gms/internal/zzjb$zza;->zzJl:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcS()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v1, Lcom/google/android/gms/internal/zzjb$zza;->zzJk:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    sget-object v0, Lcom/google/android/gms/internal/zzgd;->zzDi:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v10, v0

    mul-long/2addr v8, v10

    cmp-long v0, v6, v8

    if-lez v0, :cond_4

    const-string v0, "Expired interstitial at %s."

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/zziz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzja;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzjc;->zzgC()Lcom/google/android/gms/internal/zzjc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjc;->zzgD()V

    goto :goto_4

    :cond_4
    iget-object v0, v1, Lcom/google/android/gms/internal/zzjb$zza;->zzJi:Lcom/google/android/gms/internal/zzec;

    if-eqz v0, :cond_5

    const-string v0, " (inline) "

    :goto_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Pooled interstitial"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "returned at %s."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/zziz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzja;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    const-string v0, " "

    goto :goto_5

    :cond_6
    move-object v0, v3

    goto/16 :goto_0

    :cond_7
    move-object v2, v0

    goto/16 :goto_1
.end method

.method zza(Lcom/google/android/gms/internal/zziw;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzJc:Lcom/google/android/gms/internal/zziw;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zziw;->zzgu()Lcom/google/android/gms/internal/zziw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzJc:Lcom/google/android/gms/internal/zziw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zziz;->restore()V

    :cond_0
    return-void
.end method

.method zzb(Lcom/google/android/gms/internal/zzec;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzJc:Lcom/google/android/gms/internal/zziw;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzJc:Lcom/google/android/gms/internal/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zziw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzni$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzni$zza;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzni$zza;->zzjC()Lcom/google/android/gms/internal/zzni;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/zzni;->zzUQ:I

    invoke-static {p1}, Lcom/google/android/gms/internal/zziz;->zzm(Lcom/google/android/gms/internal/zzec;)Lcom/google/android/gms/internal/zzec;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/gms/internal/zziz;->zzak(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/zzja;

    invoke-direct {v4, v2, v3, v1}, Lcom/google/android/gms/internal/zzja;-><init>(Lcom/google/android/gms/internal/zzec;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzyE:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzjb;

    if-nez v0, :cond_1

    const-string v0, "Interstitial pool created at %s."

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/zziz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzja;)V

    new-instance v0, Lcom/google/android/gms/internal/zzjb;

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzjb;-><init>(Lcom/google/android/gms/internal/zzec;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zziz;->zzyE:Ljava/util/Map;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zziz;->zzJc:Lcom/google/android/gms/internal/zziw;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzjb;->zza(Lcom/google/android/gms/internal/zziw;Lcom/google/android/gms/internal/zzec;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjb;->zzgA()V

    const-string v0, "Inline entry added to the queue at %s."

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/zziz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzja;)V

    goto :goto_0
.end method

.method zzgv()V
    .locals 9

    const/4 v8, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzJc:Lcom/google/android/gms/internal/zziw;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->zzyE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzja;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzjb;

    invoke-static {v8}, Lcom/google/android/gms/internal/zzpk;->zzak(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjb;->size()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjb;->zzgy()I

    move-result v3

    if-ge v3, v2, :cond_1

    const-string v5, "Loading %s/%s pooled interstitials for %s."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v3

    aput-object v1, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjb;->zzgz()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    move v3, v2

    :cond_2
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjb;->size()I

    move-result v5

    sget-object v2, Lcom/google/android/gms/internal/zzgd;->zzDh:Lcom/google/android/gms/internal/zzfz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzfz;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v5, v2, :cond_3

    const-string v2, "Pooling and loading one new interstitial for %s."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zziz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzja;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zziz;->zzJc:Lcom/google/android/gms/internal/zziw;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzjb;->zzb(Lcom/google/android/gms/internal/zziw;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/zzjc;->zzgC()Lcom/google/android/gms/internal/zzjc;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzjc;->zzE(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zziz;->save()V

    goto/16 :goto_0
.end method
