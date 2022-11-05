.class public final Lcom/flurry/sdk/gq$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/flurry/sdk/dn;

.field private b:Z

.field private c:F

.field private d:F

.field private e:F

.field private f:J


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/dn;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput v0, p0, Lcom/flurry/sdk/gq$a;->c:F

    .line 86
    iput v0, p0, Lcom/flurry/sdk/gq$a;->d:F

    .line 87
    iput v0, p0, Lcom/flurry/sdk/gq$a;->e:F

    .line 94
    iput-object p1, p0, Lcom/flurry/sdk/gq$a;->a:Lcom/flurry/sdk/dn;

    .line 95
    return-void
.end method


# virtual methods
.method public final a(ZZIF)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 129
    iget-boolean v2, p0, Lcom/flurry/sdk/gq$a;->b:Z

    if-eqz v2, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    iget v2, p0, Lcom/flurry/sdk/gq$a;->e:F

    cmpg-float v2, p4, v2

    if-ltz v2, :cond_0

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 139
    iget-wide v4, p0, Lcom/flurry/sdk/gq$a;->f:J

    sub-long v4, v2, v4

    .line 140
    iput-wide v2, p0, Lcom/flurry/sdk/gq$a;->f:J

    .line 141
    const-wide/16 v2, 0x7d0

    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    .line 142
    iput v6, p0, Lcom/flurry/sdk/gq$a;->d:F

    .line 146
    :cond_2
    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/flurry/sdk/gq$a;->a:Lcom/flurry/sdk/dn;

    iget v2, v2, Lcom/flurry/sdk/dn;->c:I

    if-lt p3, v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/flurry/sdk/gq$a;->a:Lcom/flurry/sdk/dn;

    iget-boolean v2, v2, Lcom/flurry/sdk/dn;->e:Z

    if-eqz v2, :cond_5

    if-nez p2, :cond_5

    .line 148
    :cond_4
    iput v6, p0, Lcom/flurry/sdk/gq$a;->d:F

    .line 149
    iput p4, p0, Lcom/flurry/sdk/gq$a;->e:F

    goto :goto_0

    .line 154
    :cond_5
    iget v2, p0, Lcom/flurry/sdk/gq$a;->e:F

    sub-float v2, p4, v2

    .line 155
    iput p4, p0, Lcom/flurry/sdk/gq$a;->e:F

    .line 156
    iget-object v3, p0, Lcom/flurry/sdk/gq$a;->a:Lcom/flurry/sdk/dn;

    iget-boolean v3, v3, Lcom/flurry/sdk/dn;->d:Z

    if-eqz v3, :cond_6

    .line 157
    iget v3, p0, Lcom/flurry/sdk/gq$a;->d:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/flurry/sdk/gq$a;->d:F

    .line 158
    iget v2, p0, Lcom/flurry/sdk/gq$a;->d:F

    iget-object v3, p0, Lcom/flurry/sdk/gq$a;->a:Lcom/flurry/sdk/dn;

    iget-wide v4, v3, Lcom/flurry/sdk/dn;->b:J

    long-to-float v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 159
    iput-boolean v1, p0, Lcom/flurry/sdk/gq$a;->b:Z

    move v0, v1

    .line 160
    goto :goto_0

    .line 163
    :cond_6
    iget v3, p0, Lcom/flurry/sdk/gq$a;->c:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/flurry/sdk/gq$a;->c:F

    .line 164
    iget v2, p0, Lcom/flurry/sdk/gq$a;->c:F

    iget-object v3, p0, Lcom/flurry/sdk/gq$a;->a:Lcom/flurry/sdk/dn;

    iget-wide v4, v3, Lcom/flurry/sdk/dn;->b:J

    long-to-float v3, v4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 165
    iput-boolean v1, p0, Lcom/flurry/sdk/gq$a;->b:Z

    move v0, v1

    .line 166
    goto :goto_0
.end method
