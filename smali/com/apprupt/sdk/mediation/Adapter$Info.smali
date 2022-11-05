.class public final enum Lcom/apprupt/sdk/mediation/Adapter$Info;
.super Ljava/lang/Enum;
.source "Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/mediation/Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Info"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apprupt/sdk/mediation/Adapter$Info;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADCOLONY:Lcom/apprupt/sdk/mediation/Adapter$Info;

.field public static final enum ADMARVEL:Lcom/apprupt/sdk/mediation/Adapter$Info;

.field public static final enum ADMOB:Lcom/apprupt/sdk/mediation/Adapter$Info;

.field public static final enum APPRUPT:Lcom/apprupt/sdk/mediation/Adapter$Info;

.field public static final enum CLIPKIT:Lcom/apprupt/sdk/mediation/Adapter$Info;

.field public static final enum DOUBLECLICK:Lcom/apprupt/sdk/mediation/Adapter$Info;

.field public static final enum MOPUB:Lcom/apprupt/sdk/mediation/Adapter$Info;

.field private static final synthetic a:[Lcom/apprupt/sdk/mediation/Adapter$Info;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/apprupt/sdk/mediation/Adapter$Info;

    const-string v1, "APPRUPT"

    invoke-direct {v0, v1, v3}, Lcom/apprupt/sdk/mediation/Adapter$Info;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/mediation/Adapter$Info;->APPRUPT:Lcom/apprupt/sdk/mediation/Adapter$Info;

    new-instance v0, Lcom/apprupt/sdk/mediation/Adapter$Info;

    const-string v1, "ADCOLONY"

    invoke-direct {v0, v1, v4}, Lcom/apprupt/sdk/mediation/Adapter$Info;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/mediation/Adapter$Info;->ADCOLONY:Lcom/apprupt/sdk/mediation/Adapter$Info;

    new-instance v0, Lcom/apprupt/sdk/mediation/Adapter$Info;

    const-string v1, "ADMARVEL"

    invoke-direct {v0, v1, v5}, Lcom/apprupt/sdk/mediation/Adapter$Info;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/mediation/Adapter$Info;->ADMARVEL:Lcom/apprupt/sdk/mediation/Adapter$Info;

    new-instance v0, Lcom/apprupt/sdk/mediation/Adapter$Info;

    const-string v1, "MOPUB"

    invoke-direct {v0, v1, v6}, Lcom/apprupt/sdk/mediation/Adapter$Info;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/mediation/Adapter$Info;->MOPUB:Lcom/apprupt/sdk/mediation/Adapter$Info;

    new-instance v0, Lcom/apprupt/sdk/mediation/Adapter$Info;

    const-string v1, "ADMOB"

    invoke-direct {v0, v1, v7}, Lcom/apprupt/sdk/mediation/Adapter$Info;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/mediation/Adapter$Info;->ADMOB:Lcom/apprupt/sdk/mediation/Adapter$Info;

    new-instance v0, Lcom/apprupt/sdk/mediation/Adapter$Info;

    const-string v1, "DOUBLECLICK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/mediation/Adapter$Info;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/mediation/Adapter$Info;->DOUBLECLICK:Lcom/apprupt/sdk/mediation/Adapter$Info;

    new-instance v0, Lcom/apprupt/sdk/mediation/Adapter$Info;

    const-string v1, "CLIPKIT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/mediation/Adapter$Info;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/mediation/Adapter$Info;->CLIPKIT:Lcom/apprupt/sdk/mediation/Adapter$Info;

    .line 11
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/apprupt/sdk/mediation/Adapter$Info;

    sget-object v1, Lcom/apprupt/sdk/mediation/Adapter$Info;->APPRUPT:Lcom/apprupt/sdk/mediation/Adapter$Info;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apprupt/sdk/mediation/Adapter$Info;->ADCOLONY:Lcom/apprupt/sdk/mediation/Adapter$Info;

    aput-object v1, v0, v4

    sget-object v1, Lcom/apprupt/sdk/mediation/Adapter$Info;->ADMARVEL:Lcom/apprupt/sdk/mediation/Adapter$Info;

    aput-object v1, v0, v5

    sget-object v1, Lcom/apprupt/sdk/mediation/Adapter$Info;->MOPUB:Lcom/apprupt/sdk/mediation/Adapter$Info;

    aput-object v1, v0, v6

    sget-object v1, Lcom/apprupt/sdk/mediation/Adapter$Info;->ADMOB:Lcom/apprupt/sdk/mediation/Adapter$Info;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/apprupt/sdk/mediation/Adapter$Info;->DOUBLECLICK:Lcom/apprupt/sdk/mediation/Adapter$Info;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/apprupt/sdk/mediation/Adapter$Info;->CLIPKIT:Lcom/apprupt/sdk/mediation/Adapter$Info;

    aput-object v2, v0, v1

    sput-object v0, Lcom/apprupt/sdk/mediation/Adapter$Info;->a:[Lcom/apprupt/sdk/mediation/Adapter$Info;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static defaultOrder()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    invoke-static {}, Lcom/apprupt/sdk/mediation/Adapter$Info;->values()[Lcom/apprupt/sdk/mediation/Adapter$Info;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 59
    const/4 v1, 0x0

    sget-object v2, Lcom/apprupt/sdk/mediation/Adapter$Info;->ADCOLONY:Lcom/apprupt/sdk/mediation/Adapter$Info;

    invoke-virtual {v2}, Lcom/apprupt/sdk/mediation/Adapter$Info;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 60
    const/4 v1, 0x1

    sget-object v2, Lcom/apprupt/sdk/mediation/Adapter$Info;->APPRUPT:Lcom/apprupt/sdk/mediation/Adapter$Info;

    invoke-virtual {v2}, Lcom/apprupt/sdk/mediation/Adapter$Info;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 61
    const/4 v1, 0x2

    sget-object v2, Lcom/apprupt/sdk/mediation/Adapter$Info;->ADMOB:Lcom/apprupt/sdk/mediation/Adapter$Info;

    invoke-virtual {v2}, Lcom/apprupt/sdk/mediation/Adapter$Info;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 62
    const/4 v1, 0x3

    sget-object v2, Lcom/apprupt/sdk/mediation/Adapter$Info;->DOUBLECLICK:Lcom/apprupt/sdk/mediation/Adapter$Info;

    invoke-virtual {v2}, Lcom/apprupt/sdk/mediation/Adapter$Info;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 63
    const/4 v1, 0x4

    sget-object v2, Lcom/apprupt/sdk/mediation/Adapter$Info;->MOPUB:Lcom/apprupt/sdk/mediation/Adapter$Info;

    invoke-virtual {v2}, Lcom/apprupt/sdk/mediation/Adapter$Info;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 64
    const/4 v1, 0x5

    sget-object v2, Lcom/apprupt/sdk/mediation/Adapter$Info;->CLIPKIT:Lcom/apprupt/sdk/mediation/Adapter$Info;

    invoke-virtual {v2}, Lcom/apprupt/sdk/mediation/Adapter$Info;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 65
    return-object v0
.end method

.method public static names()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-static {}, Lcom/apprupt/sdk/mediation/Adapter$Info;->values()[Lcom/apprupt/sdk/mediation/Adapter$Info;

    move-result-object v2

    .line 21
    array-length v1, v2

    new-array v3, v1, [Ljava/lang/String;

    .line 23
    array-length v4, v2

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v2, v0

    .line 24
    invoke-virtual {v5}, Lcom/apprupt/sdk/mediation/Adapter$Info;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_0
    return-object v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apprupt/sdk/mediation/Adapter$Info;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/apprupt/sdk/mediation/Adapter$Info;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/mediation/Adapter$Info;

    return-object v0
.end method

.method public static values()[Lcom/apprupt/sdk/mediation/Adapter$Info;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/apprupt/sdk/mediation/Adapter$Info;->a:[Lcom/apprupt/sdk/mediation/Adapter$Info;

    invoke-virtual {v0}, [Lcom/apprupt/sdk/mediation/Adapter$Info;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apprupt/sdk/mediation/Adapter$Info;

    return-object v0
.end method


# virtual methods
.method public fromString(Ljava/lang/String;)Lcom/apprupt/sdk/mediation/Adapter$Info;
    .locals 5

    .prologue
    .line 31
    invoke-static {}, Lcom/apprupt/sdk/mediation/Adapter$Info;->values()[Lcom/apprupt/sdk/mediation/Adapter$Info;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 32
    invoke-virtual {v0}, Lcom/apprupt/sdk/mediation/Adapter$Info;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    :goto_1
    return-object v0

    .line 31
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public toClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/apprupt/sdk/mediation/Adapter$1;->a:[I

    invoke-virtual {p0}, Lcom/apprupt/sdk/mediation/Adapter$Info;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 54
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 40
    :pswitch_0
    const-string v0, "com.apprupt.sdk.CvAdapter"

    goto :goto_0

    .line 42
    :pswitch_1
    const-string v0, "com.apprupt.sdk.AdColonyAdapter"

    goto :goto_0

    .line 44
    :pswitch_2
    const-string v0, "com.apprupt.mediation.admarvel.AdMarvelAdapter"

    goto :goto_0

    .line 46
    :pswitch_3
    const-string v0, "com.apprupt.mediation.mopub.Adapter"

    goto :goto_0

    .line 48
    :pswitch_4
    const-string v0, "com.apprupt.mediation.google.AdMobAdapter"

    goto :goto_0

    .line 50
    :pswitch_5
    const-string v0, "com.apprupt.mediation.google.DoubleclickAdapter"

    goto :goto_0

    .line 52
    :pswitch_6
    const-string v0, "com.apprupt.mediation.clipkit.Adapter"

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
