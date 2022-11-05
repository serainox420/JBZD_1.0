.class Lcom/adcolony/sdk/af;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I = 0x5

.field static final b:I = 0x1

.field static final c:I = 0x3

.field static final d:I = 0x0

.field static final e:I = 0x1

.field private static f:I

.field private static g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adcolony/sdk/af;->g:Ljava/util/HashMap;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adcolony/sdk/af;->h:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(ILandroid/os/Bundle;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v3, v4

    .line 36
    packed-switch p0, :pswitch_data_0

    move v0, v2

    .line 90
    :goto_0
    return v0

    .line 40
    :pswitch_0
    sget v0, Lcom/adcolony/sdk/af;->f:I

    sub-int v0, v3, v0

    const/4 v4, 0x5

    if-ge v0, v4, :cond_0

    move v0, v1

    .line 42
    goto :goto_0

    .line 45
    :cond_0
    sput v3, Lcom/adcolony/sdk/af;->f:I

    move v0, v2

    .line 46
    goto :goto_0

    .line 51
    :pswitch_1
    if-nez p1, :cond_1

    move v0, v2

    .line 53
    goto :goto_0

    .line 56
    :cond_1
    const-string v0, "zone_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 59
    sget-object v0, Lcom/adcolony/sdk/af;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 61
    sget-object v0, Lcom/adcolony/sdk/af;->g:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_2
    sget-object v0, Lcom/adcolony/sdk/af;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 67
    sget-object v0, Lcom/adcolony/sdk/af;->h:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_3
    sget-object v0, Lcom/adcolony/sdk/af;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v3, v0

    if-le v0, v1, :cond_4

    .line 73
    sget-object v0, Lcom/adcolony/sdk/af;->h:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/adcolony/sdk/af;->g:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 75
    goto :goto_0

    .line 79
    :cond_4
    sget-object v0, Lcom/adcolony/sdk/af;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 80
    sget-object v3, Lcom/adcolony/sdk/af;->h:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/4 v3, 0x3

    if-le v0, v3, :cond_5

    move v0, v1

    .line 85
    goto :goto_0

    :cond_5
    move v0, v2

    .line 87
    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
