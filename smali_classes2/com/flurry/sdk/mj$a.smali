.class public final enum Lcom/flurry/sdk/mj$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/mj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/mj$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/mj$a;

.field public static final enum b:Lcom/flurry/sdk/mj$a;

.field public static final enum c:Lcom/flurry/sdk/mj$a;

.field public static final enum d:Lcom/flurry/sdk/mj$a;

.field public static final enum e:Lcom/flurry/sdk/mj$a;

.field public static final enum f:Lcom/flurry/sdk/mj$a;

.field public static final enum g:Lcom/flurry/sdk/mj$a;

.field public static final enum h:Lcom/flurry/sdk/mj$a;

.field public static final enum i:Lcom/flurry/sdk/mj$a;

.field public static final enum j:Lcom/flurry/sdk/mj$a;

.field public static final enum k:Lcom/flurry/sdk/mj$a;

.field public static final enum l:Lcom/flurry/sdk/mj$a;

.field public static final enum m:Lcom/flurry/sdk/mj$a;

.field public static final enum n:Lcom/flurry/sdk/mj$a;

.field public static final enum o:Lcom/flurry/sdk/mj$a;

.field public static final enum p:Lcom/flurry/sdk/mj$a;

.field private static final synthetic r:[Lcom/flurry/sdk/mj$a;


# instance fields
.field public final q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 25
    new-instance v0, Lcom/flurry/sdk/mj$a;

    const-string v1, "SDK_NAME"

    const-string v2, "sdk_name"

    invoke-direct {v0, v1, v4, v2}, Lcom/flurry/sdk/mj$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/mj$a;->a:Lcom/flurry/sdk/mj$a;

    .line 26
    new-instance v0, Lcom/flurry/sdk/mj$a;

    const-string v1, "SDK_VERSION"

    const-string v2, "sdk_ver"

    invoke-direct {v0, v1, v5, v2}, Lcom/flurry/sdk/mj$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/mj$a;->b:Lcom/flurry/sdk/mj$a;

    .line 27
    new-instance v0, Lcom/flurry/sdk/mj$a;

    const-string v1, "APP_ID"

    const-string v2, "ym_src"

    invoke-direct {v0, v1, v6, v2}, Lcom/flurry/sdk/mj$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/mj$a;->c:Lcom/flurry/sdk/mj$a;

    .line 28
    new-instance v0, Lcom/flurry/sdk/mj$a;

    const-string v1, "API_KEY"

    const-string v2, "ym_key"

    invoke-direct {v0, v1, v7, v2}, Lcom/flurry/sdk/mj$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/mj$a;->d:Lcom/flurry/sdk/mj$a;

    .line 29
    new-instance v0, Lcom/flurry/sdk/mj$a;

    const-string v1, "AD_TYPE"

    const-string v2, "ym_atype"

    invoke-direct {v0, v1, v8, v2}, Lcom/flurry/sdk/mj$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/mj$a;->e:Lcom/flurry/sdk/mj$a;

    .line 30
    new-instance v0, Lcom/flurry/sdk/mj$a;

    const-string v1, "CREATIVE_TYPE"

    const/4 v2, 0x5

    const-string v3, "ym_cc"

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/mj$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/mj$a;->f:Lcom/flurry/sdk/mj$a;

    .line 31
    new-instance v0, Lcom/flurry/sdk/mj$a;

    const-string v1, "AD_ID"

    const/4 v2, 0x6

    const-string v3, "ym_adid"

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/mj$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/mj$a;->g:Lcom/flurry/sdk/mj$a;

    .line 32
    new-instance v0, Lcom/flurry/sdk/mj$a;

    const-string v1, "ADUNIT_ID"

    const/4 v2, 0x7

    const-string v3, "ym_adu"

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/mj$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/mj$a;->h:Lcom/flurry/sdk/mj$a;

    .line 33
    new-instance v0, Lcom/flurry/sdk/mj$a;

    const-string v1, "STATUS_CODE"

    const/16 v2, 0x8

    const-string v3, "ym_code"

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/mj$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/mj$a;->i:Lcom/flurry/sdk/mj$a;

    .line 34
    new-instance v0, Lcom/flurry/sdk/mj$a;

    const-string v1, "STATUS_VALUE"

    const/16 v2, 0x9

    const-string v3, "ym_value"

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/mj$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/mj$a;->j:Lcom/flurry/sdk/mj$a;

    .line 35
    new-instance v0, Lcom/flurry/sdk/mj$a;

    const-string v1, "URL"

    const/16 v2, 0xa

    const-string v3, "ym_url"

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/mj$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/mj$a;->k:Lcom/flurry/sdk/mj$a;

    .line 36
    new-instance v0, Lcom/flurry/sdk/mj$a;

    const-string v1, "REQUEST_ID"

    const/16 v2, 0xb

    const-string v3, "ym_rid"

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/mj$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/mj$a;->l:Lcom/flurry/sdk/mj$a;

    .line 37
    new-instance v0, Lcom/flurry/sdk/mj$a;

    const-string v1, "AD_TEMPLATE"

    const/16 v2, 0xc

    const-string v3, "ym_tmpl"

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/mj$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/mj$a;->m:Lcom/flurry/sdk/mj$a;

    .line 38
    new-instance v0, Lcom/flurry/sdk/mj$a;

    const-string v1, "AD_UNIT_DISPLAY_TYPE"

    const/16 v2, 0xd

    const-string v3, "ym_audt"

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/mj$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/mj$a;->n:Lcom/flurry/sdk/mj$a;

    .line 39
    new-instance v0, Lcom/flurry/sdk/mj$a;

    const-string v1, "AD_INVENTORY_SOURCE_ID"

    const/16 v2, 0xe

    const-string v3, "ym_ivsrc"

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/mj$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/mj$a;->o:Lcom/flurry/sdk/mj$a;

    .line 40
    new-instance v0, Lcom/flurry/sdk/mj$a;

    const-string v1, "AD_MEDIA_TYPE"

    const/16 v2, 0xf

    const-string v3, "ym_mtype"

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/sdk/mj$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/mj$a;->p:Lcom/flurry/sdk/mj$a;

    .line 24
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/flurry/sdk/mj$a;

    sget-object v1, Lcom/flurry/sdk/mj$a;->a:Lcom/flurry/sdk/mj$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/mj$a;->b:Lcom/flurry/sdk/mj$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/mj$a;->c:Lcom/flurry/sdk/mj$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/sdk/mj$a;->d:Lcom/flurry/sdk/mj$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/flurry/sdk/mj$a;->e:Lcom/flurry/sdk/mj$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/mj$a;->f:Lcom/flurry/sdk/mj$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/mj$a;->g:Lcom/flurry/sdk/mj$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/flurry/sdk/mj$a;->h:Lcom/flurry/sdk/mj$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/flurry/sdk/mj$a;->i:Lcom/flurry/sdk/mj$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/flurry/sdk/mj$a;->j:Lcom/flurry/sdk/mj$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/flurry/sdk/mj$a;->k:Lcom/flurry/sdk/mj$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/flurry/sdk/mj$a;->l:Lcom/flurry/sdk/mj$a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/flurry/sdk/mj$a;->m:Lcom/flurry/sdk/mj$a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/flurry/sdk/mj$a;->n:Lcom/flurry/sdk/mj$a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/flurry/sdk/mj$a;->o:Lcom/flurry/sdk/mj$a;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/flurry/sdk/mj$a;->p:Lcom/flurry/sdk/mj$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/sdk/mj$a;->r:[Lcom/flurry/sdk/mj$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Lcom/flurry/sdk/mj$a;->q:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/mj$a;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/flurry/sdk/mj$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/mj$a;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/mj$a;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/flurry/sdk/mj$a;->r:[Lcom/flurry/sdk/mj$a;

    invoke-virtual {v0}, [Lcom/flurry/sdk/mj$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/mj$a;

    return-object v0
.end method
