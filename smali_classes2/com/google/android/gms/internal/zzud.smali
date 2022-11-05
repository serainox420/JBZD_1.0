.class public Lcom/google/android/gms/internal/zzud;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzud$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzud;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzAT:Ljava/lang/String;

.field final zzahP:Lcom/google/android/gms/internal/zztr;

.field final zzahQ:J

.field zzahR:I

.field final zzahS:Lcom/google/android/gms/internal/zztp;

.field final zzahT:Z

.field zzahU:I

.field zzahV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzue;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzue;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzud;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zztr;JILjava/lang/String;Lcom/google/android/gms/internal/zztp;ZII)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzud;->zzahP:Lcom/google/android/gms/internal/zztr;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzud;->zzahQ:J

    iput p4, p0, Lcom/google/android/gms/internal/zzud;->zzahR:I

    iput-object p5, p0, Lcom/google/android/gms/internal/zzud;->zzAT:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzud;->zzahS:Lcom/google/android/gms/internal/zztp;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzud;->zzahT:Z

    iput p8, p0, Lcom/google/android/gms/internal/zzud;->zzahU:I

    iput p9, p0, Lcom/google/android/gms/internal/zzud;->zzahV:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;",
            ">;I)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzud;->zza(Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/internal/zztr;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {p2 .. p6}, Lcom/google/android/gms/internal/zzud;->zza(Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/internal/zztp$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztp$zza;->zzqE()Lcom/google/android/gms/internal/zztp;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v0, p0

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/zzud;-><init>(Lcom/google/android/gms/internal/zztr;JILjava/lang/String;Lcom/google/android/gms/internal/zztp;ZII)V

    return-void
.end method

.method public static zza(Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/internal/zztp$zza;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;",
            ">;)",
            "Lcom/google/android/gms/internal/zztp$zza;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zztp$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztp$zza;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzud;->zzcp(Ljava/lang/String;)Lcom/google/android/gms/internal/zztt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zztp$zza;->zza(Lcom/google/android/gms/internal/zztt;)Lcom/google/android/gms/internal/zztp$zza;

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/zzud;->zzk(Landroid/net/Uri;)Lcom/google/android/gms/internal/zztt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zztp$zza;->zza(Lcom/google/android/gms/internal/zztt;)Lcom/google/android/gms/internal/zztp$zza;

    :cond_0
    if-eqz p4, :cond_1

    invoke-static {p4}, Lcom/google/android/gms/internal/zzud;->zzv(Ljava/util/List;)Lcom/google/android/gms/internal/zztt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zztp$zza;->zza(Lcom/google/android/gms/internal/zztt;)Lcom/google/android/gms/internal/zztp$zza;

    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "intent_action"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzud;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zztt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zztp$zza;->zza(Lcom/google/android/gms/internal/zztt;)Lcom/google/android/gms/internal/zztp$zza;

    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "intent_data"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzud;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zztt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zztp$zza;->zza(Lcom/google/android/gms/internal/zztt;)Lcom/google/android/gms/internal/zztp$zza;

    :cond_3
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "intent_activity"

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzud;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zztt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zztp$zza;->zza(Lcom/google/android/gms/internal/zztt;)Lcom/google/android/gms/internal/zztp$zza;

    :cond_4
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "intent_extra_data_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "intent_extra_data"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzud;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zztt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zztp$zza;->zza(Lcom/google/android/gms/internal/zztt;)Lcom/google/android/gms/internal/zztp$zza;

    :cond_5
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/zztp$zza;->zzcl(Ljava/lang/String;)Lcom/google/android/gms/internal/zztp$zza;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zztp$zza;->zzY(Z)Lcom/google/android/gms/internal/zztp$zza;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/internal/zztr;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzud;->zzg(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzud;->zzt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zztr;

    move-result-object v0

    return-object v0
.end method

.method private static zzcp(Ljava/lang/String;)Lcom/google/android/gms/internal/zztt;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/google/android/gms/internal/zztt;

    new-instance v1, Lcom/google/android/gms/internal/zzub$zza;

    const-string v2, "title"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzub$zza;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzub$zza;->zzaQ(I)Lcom/google/android/gms/internal/zzub$zza;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzub$zza;->zzaa(Z)Lcom/google/android/gms/internal/zzub$zza;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzub$zza;->zzco(Ljava/lang/String;)Lcom/google/android/gms/internal/zzub$zza;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzub$zza;->zzqH()Lcom/google/android/gms/internal/zzub;

    move-result-object v1

    const-string v2, "text1"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/zztt;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzub;Ljava/lang/String;)V

    return-object v0
.end method

.method private static zzg(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static zzk(Landroid/net/Uri;)Lcom/google/android/gms/internal/zztt;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zztt;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzub$zza;

    const-string v3, "web_url"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzub$zza;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzub$zza;->zzaQ(I)Lcom/google/android/gms/internal/zzub$zza;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzub$zza;->zzZ(Z)Lcom/google/android/gms/internal/zzub$zza;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzub$zza;->zzco(Ljava/lang/String;)Lcom/google/android/gms/internal/zzub$zza;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzub$zza;->zzqH()Lcom/google/android/gms/internal/zzub;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zztt;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzub;)V

    return-object v0
.end method

.method private static zzt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zztr;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zztr;

    const-string v1, ""

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/internal/zztr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zztt;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zztt;

    new-instance v1, Lcom/google/android/gms/internal/zzub$zza;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzub$zza;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzub$zza;->zzZ(Z)Lcom/google/android/gms/internal/zzub$zza;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzub$zza;->zzqH()Lcom/google/android/gms/internal/zzub;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/google/android/gms/internal/zztt;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzub;Ljava/lang/String;)V

    return-object v0
.end method

.method private static zzv(Ljava/util/List;)Lcom/google/android/gms/internal/zztt;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;",
            ">;)",
            "Lcom/google/android/gms/internal/zztt;"
        }
    .end annotation

    new-instance v2, Lcom/google/android/gms/internal/zzaqn$zza;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzaqn$zza;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Lcom/google/android/gms/internal/zzaqn$zza$zza;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzaqn$zza$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaqn$zza$zza;-><init>()V

    aput-object v0, v3, v1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;

    aget-object v4, v3, v1

    iget-object v5, v0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;->appIndexingUrl:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/internal/zzaqn$zza$zza;->zzbhi:Ljava/lang/String;

    aget-object v4, v3, v1

    iget v5, v0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;->viewId:I

    iput v5, v4, Lcom/google/android/gms/internal/zzaqn$zza$zza;->viewId:I

    iget-object v4, v0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;->webUrl:Landroid/net/Uri;

    if-eqz v4, :cond_0

    aget-object v4, v3, v1

    iget-object v0, v0, Lcom/google/android/gms/appindexing/AppIndexApi$AppIndexingLink;->webUrl:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/internal/zzaqn$zza$zza;->zzbhj:Ljava/lang/String;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iput-object v3, v2, Lcom/google/android/gms/internal/zzaqn$zza;->zzbhg:[Lcom/google/android/gms/internal/zzaqn$zza$zza;

    new-instance v0, Lcom/google/android/gms/internal/zztt;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbxt;->zzf(Lcom/google/android/gms/internal/zzbxt;)[B

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzub$zza;

    const-string v3, "outlinks"

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzub$zza;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzub$zza;->zzZ(Z)Lcom/google/android/gms/internal/zzub$zza;

    move-result-object v2

    const-string v3, ".private:outLinks"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzub$zza;->zzco(Ljava/lang/String;)Lcom/google/android/gms/internal/zzub$zza;

    move-result-object v2

    const-string v3, "blob"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzub$zza;->zzcn(Ljava/lang/String;)Lcom/google/android/gms/internal/zzub$zza;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzub$zza;->zzqH()Lcom/google/android/gms/internal/zzub;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zztt;-><init>([BLcom/google/android/gms/internal/zzub;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "UsageInfo[documentId=%s, timestamp=%d, usageType=%d, status=%d]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzud;->zzahP:Lcom/google/android/gms/internal/zztr;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzud;->zzahQ:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/google/android/gms/internal/zzud;->zzahR:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/google/android/gms/internal/zzud;->zzahV:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzue;->zza(Lcom/google/android/gms/internal/zzud;Landroid/os/Parcel;I)V

    return-void
.end method
