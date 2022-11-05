.class public Lcom/apprupt/sdk/CvAudience;
.super Ljava/lang/Object;
.source "CvAudience.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/CvAudience$RelationshipStatus;,
        Lcom/apprupt/sdk/CvAudience$Gender;,
        Lcom/apprupt/sdk/CvAudience$CvAudienceHolder;
    }
.end annotation


# static fields
.field public static a:I


# instance fields
.field private b:Lcom/apprupt/sdk/CvAudience$Gender;

.field private c:Ljava/util/Calendar;

.field private d:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, -0x1

    sput v0, Lcom/apprupt/sdk/CvAudience;->a:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Lcom/apprupt/sdk/CvAudience$Gender;->UNKNOWN:Lcom/apprupt/sdk/CvAudience$Gender;

    iput-object v0, p0, Lcom/apprupt/sdk/CvAudience;->b:Lcom/apprupt/sdk/CvAudience$Gender;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/CvAudience;->c:Ljava/util/Calendar;

    .line 74
    sget-object v0, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;->UNKNOWN:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    iput-object v0, p0, Lcom/apprupt/sdk/CvAudience;->d:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    .line 75
    sget v0, Lcom/apprupt/sdk/CvAudience;->a:I

    iput v0, p0, Lcom/apprupt/sdk/CvAudience;->e:I

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Lcom/apprupt/sdk/CvAudience$1;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/apprupt/sdk/CvAudience;-><init>()V

    return-void
.end method

.method static a()Lcom/apprupt/sdk/CvAudience;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/apprupt/sdk/CvAudience$CvAudienceHolder;->a:Lcom/apprupt/sdk/CvAudience;

    return-object v0
.end method


# virtual methods
.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/apprupt/sdk/CvAudience;->b:Lcom/apprupt/sdk/CvAudience$Gender;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvAudience$Gender;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/apprupt/sdk/CvAudience;->c:Ljava/util/Calendar;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 108
    :goto_0
    return-object v0

    .line 107
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/apprupt/sdk/CvAudience;->c:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 138
    iget v0, p0, Lcom/apprupt/sdk/CvAudience;->e:I

    sget v1, Lcom/apprupt/sdk/CvAudience;->a:I

    if-ne v0, v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/apprupt/sdk/CvAudience;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/apprupt/sdk/CvAudience;->d:Lcom/apprupt/sdk/CvAudience$RelationshipStatus;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvAudience$RelationshipStatus;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method f()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 154
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 156
    :try_start_0
    const-string v0, "gender"

    invoke-virtual {p0}, Lcom/apprupt/sdk/CvAudience;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v0, "birthDate"

    invoke-virtual {p0}, Lcom/apprupt/sdk/CvAudience;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string v0, "relationshipStatus"

    invoke-virtual {p0}, Lcom/apprupt/sdk/CvAudience;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v0, "numberOfChildren"

    invoke-virtual {p0}, Lcom/apprupt/sdk/CvAudience;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-object v1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    invoke-static {}, Lcom/apprupt/sdk/Logger;->a()Lcom/apprupt/sdk/Logger$log;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Cannot build JSON from audience"

    aput-object v5, v3, v4

    invoke-interface {v2, v0, v3}, Lcom/apprupt/sdk/Logger$log;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
