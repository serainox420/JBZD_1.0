.class public Lcom/smaato/soma/d;
.super Ljava/lang/Object;
.source "AdSettings.java"


# instance fields
.field private a:Lcom/smaato/soma/AdType;

.field private b:Z

.field private c:Lcom/smaato/soma/AdDimension;

.field private d:I

.field private e:I

.field private f:J

.field private g:J

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/smaato/soma/AdType;->ALL:Lcom/smaato/soma/AdType;

    iput-object v0, p0, Lcom/smaato/soma/d;->a:Lcom/smaato/soma/AdType;

    .line 32
    iput-boolean v2, p0, Lcom/smaato/soma/d;->b:Z

    .line 36
    sget-object v0, Lcom/smaato/soma/AdDimension;->DEFAULT:Lcom/smaato/soma/AdDimension;

    iput-object v0, p0, Lcom/smaato/soma/d;->c:Lcom/smaato/soma/AdDimension;

    .line 40
    iput v1, p0, Lcom/smaato/soma/d;->d:I

    .line 44
    iput v1, p0, Lcom/smaato/soma/d;->e:I

    .line 48
    iput-wide v4, p0, Lcom/smaato/soma/d;->f:J

    .line 52
    iput-wide v4, p0, Lcom/smaato/soma/d;->g:J

    .line 59
    iput-boolean v2, p0, Lcom/smaato/soma/d;->h:Z

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/smaato/soma/d;->f:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 177
    iput p1, p0, Lcom/smaato/soma/d;->d:I

    .line 178
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/smaato/soma/d;->f:J

    .line 76
    return-void
.end method

.method public final a(Lcom/smaato/soma/AdDimension;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/smaato/soma/d;->c:Lcom/smaato/soma/AdDimension;

    .line 122
    return-void
.end method

.method public final a(Lcom/smaato/soma/AdType;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 107
    iput-object p1, p0, Lcom/smaato/soma/d;->a:Lcom/smaato/soma/AdType;

    .line 108
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/smaato/soma/d;->g:J

    return-wide v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 233
    iput p1, p0, Lcom/smaato/soma/d;->e:I

    .line 234
    return-void
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/smaato/soma/d;->g:J

    .line 92
    return-void
.end method

.method public final c()Lcom/smaato/soma/AdType;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/smaato/soma/d;->a:Lcom/smaato/soma/AdType;

    return-object v0
.end method

.method public final d()Lcom/smaato/soma/AdDimension;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/smaato/soma/d;->c:Lcom/smaato/soma/AdDimension;

    return-object v0
.end method

.method public e()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/BannerWidthForAdDimensionFailed;
        }
    .end annotation

    .prologue
    .line 130
    :try_start_0
    iget v0, p0, Lcom/smaato/soma/d;->d:I

    if-nez v0, :cond_0

    .line 131
    sget-object v0, Lcom/smaato/soma/d$1;->a:[I

    iget-object v1, p0, Lcom/smaato/soma/d;->c:Lcom/smaato/soma/AdDimension;

    invoke-virtual {v1}, Lcom/smaato/soma/AdDimension;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 165
    :cond_0
    :goto_0
    iget v0, p0, Lcom/smaato/soma/d;->d:I

    return v0

    .line 133
    :pswitch_0
    const/16 v0, 0x140

    iput v0, p0, Lcom/smaato/soma/d;->d:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    throw v0

    .line 136
    :pswitch_1
    const/16 v0, 0x12c

    :try_start_1
    iput v0, p0, Lcom/smaato/soma/d;->d:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 168
    :catch_1
    move-exception v0

    .line 169
    new-instance v1, Lcom/smaato/soma/exception/BannerWidthForAdDimensionFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/BannerWidthForAdDimensionFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 139
    :pswitch_2
    const/16 v0, 0x2d8

    :try_start_2
    iput v0, p0, Lcom/smaato/soma/d;->d:I

    goto :goto_0

    .line 142
    :pswitch_3
    const/16 v0, 0x78

    iput v0, p0, Lcom/smaato/soma/d;->d:I

    goto :goto_0

    .line 145
    :pswitch_4
    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/settings/a;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/settings/a;->b(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    .line 146
    const/16 v0, 0x140

    iput v0, p0, Lcom/smaato/soma/d;->d:I

    goto :goto_0

    .line 148
    :cond_1
    const/16 v0, 0x300

    iput v0, p0, Lcom/smaato/soma/d;->d:I

    goto :goto_0

    .line 152
    :pswitch_5
    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/settings/a;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/settings/a;->b(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2

    .line 153
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/smaato/soma/d;->d:I

    goto :goto_0

    .line 155
    :cond_2
    const/16 v0, 0x400

    iput v0, p0, Lcom/smaato/soma/d;->d:I

    goto :goto_0

    .line 159
    :pswitch_6
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/smaato/soma/d;->d:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 131
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

.method public f()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/BannerHeightForAdDimensionFailed;
        }
    .end annotation

    .prologue
    .line 186
    :try_start_0
    iget v0, p0, Lcom/smaato/soma/d;->e:I

    if-nez v0, :cond_0

    .line 187
    sget-object v0, Lcom/smaato/soma/d$1;->a:[I

    iget-object v1, p0, Lcom/smaato/soma/d;->c:Lcom/smaato/soma/AdDimension;

    invoke-virtual {v1}, Lcom/smaato/soma/AdDimension;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 221
    :cond_0
    :goto_0
    iget v0, p0, Lcom/smaato/soma/d;->e:I

    return v0

    .line 189
    :pswitch_0
    const/16 v0, 0x32

    iput v0, p0, Lcom/smaato/soma/d;->e:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    throw v0

    .line 192
    :pswitch_1
    const/16 v0, 0xfa

    :try_start_1
    iput v0, p0, Lcom/smaato/soma/d;->e:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 224
    :catch_1
    move-exception v0

    .line 225
    new-instance v1, Lcom/smaato/soma/exception/BannerHeightForAdDimensionFailed;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/BannerHeightForAdDimensionFailed;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 195
    :pswitch_2
    const/16 v0, 0x5a

    :try_start_2
    iput v0, p0, Lcom/smaato/soma/d;->e:I

    goto :goto_0

    .line 198
    :pswitch_3
    const/16 v0, 0x258

    iput v0, p0, Lcom/smaato/soma/d;->e:I

    goto :goto_0

    .line 201
    :pswitch_4
    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/settings/a;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/settings/a;->b(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    .line 202
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/smaato/soma/d;->e:I

    goto :goto_0

    .line 204
    :cond_1
    const/16 v0, 0x400

    iput v0, p0, Lcom/smaato/soma/d;->e:I

    goto :goto_0

    .line 208
    :pswitch_5
    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    invoke-static {}, Lcom/smaato/soma/internal/requests/settings/a;->a()Lcom/smaato/soma/internal/requests/settings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smaato/soma/internal/requests/settings/a;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smaato/soma/internal/requests/settings/a;->b(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2

    .line 209
    const/16 v0, 0x140

    iput v0, p0, Lcom/smaato/soma/d;->e:I

    goto :goto_0

    .line 211
    :cond_2
    const/16 v0, 0x300

    iput v0, p0, Lcom/smaato/soma/d;->e:I

    goto :goto_0

    .line 215
    :pswitch_6
    const/16 v0, 0x273

    iput v0, p0, Lcom/smaato/soma/d;->e:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 187
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

.method public g()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/smaato/soma/d;->h:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/smaato/soma/d;->b:Z

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/smaato/soma/d;->i:Ljava/lang/String;

    return-object v0
.end method
