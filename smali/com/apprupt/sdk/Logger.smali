.class public Lcom/apprupt/sdk/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/Logger$Basic;,
        Lcom/apprupt/sdk/Logger$Dummy;,
        Lcom/apprupt/sdk/Logger$log;
    }
.end annotation


# static fields
.field static final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/apprupt/sdk/Logger$Dummy;

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/apprupt/sdk/Logger$log;",
            ">;"
        }
    .end annotation
.end field

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    new-instance v0, Lcom/apprupt/sdk/Logger$Dummy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apprupt/sdk/Logger$Dummy;-><init>(Lcom/apprupt/sdk/Logger$1;)V

    sput-object v0, Lcom/apprupt/sdk/Logger;->b:Lcom/apprupt/sdk/Logger$Dummy;

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/apprupt/sdk/Logger;->c:Ljava/util/HashMap;

    .line 188
    sput v3, Lcom/apprupt/sdk/Logger;->d:I

    .line 189
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "FLOW"

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/apprupt/sdk/Logger;->a:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/apprupt/sdk/Logger$log;
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/apprupt/sdk/Logger;->a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/apprupt/sdk/Logger$log;
    .locals 2

    .prologue
    .line 196
    if-nez p0, :cond_0

    .line 197
    const-string p0, ""

    .line 199
    :cond_0
    sget-object v0, Lcom/apprupt/sdk/Logger;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/Logger$log;

    .line 200
    if-nez v0, :cond_2

    .line 201
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lcom/apprupt/sdk/Logger;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    sget-object v0, Lcom/apprupt/sdk/Logger;->b:Lcom/apprupt/sdk/Logger$Dummy;

    .line 202
    :goto_0
    sget-object v1, Lcom/apprupt/sdk/Logger;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_2
    return-object v0

    .line 201
    :cond_3
    new-instance v0, Lcom/apprupt/sdk/Logger$Basic;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/apprupt/sdk/Logger$Basic;-><init>(Ljava/lang/String;Lcom/apprupt/sdk/Logger$1;)V

    goto :goto_0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 216
    sget v0, Lcom/apprupt/sdk/Logger;->d:I

    return v0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 15
    sget v0, Lcom/apprupt/sdk/Logger;->d:I

    return v0
.end method
