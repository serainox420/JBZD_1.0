.class Lcom/mopub/mobileads/AdRequestStatusMapping$a;
.super Ljava/lang/Object;
.source "AdRequestStatusMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdRequestStatusMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/mopub/mobileads/AdRequestStatusMapping$b;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/AdRequestStatusMapping$b;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/mopub/mobileads/AdRequestStatusMapping$a;-><init>(Lcom/mopub/mobileads/AdRequestStatusMapping$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Lcom/mopub/mobileads/AdRequestStatusMapping$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 129
    iput-object p1, p0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->a:Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    .line 130
    iput-object p2, p0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->b:Ljava/lang/String;

    .line 131
    iput-object p3, p0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->c:Ljava/lang/String;

    .line 132
    iput-object p4, p0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->d:Ljava/lang/String;

    .line 133
    return-void
.end method

.method private a()Lcom/mopub/mobileads/AdRequestStatusMapping$b;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->a:Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    return-object v0
.end method

.method static synthetic a(Lcom/mopub/mobileads/AdRequestStatusMapping$a;)Lcom/mopub/mobileads/AdRequestStatusMapping$b;
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->a()Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/mopub/mobileads/AdRequestStatusMapping$a;Lcom/mopub/mobileads/AdRequestStatusMapping$b;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->a(Lcom/mopub/mobileads/AdRequestStatusMapping$b;)V

    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/AdRequestStatusMapping$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/mopub/mobileads/AdRequestStatusMapping$b;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->a:Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    .line 142
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->c:Ljava/lang/String;

    .line 156
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/mopub/mobileads/AdRequestStatusMapping$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/mopub/mobileads/AdRequestStatusMapping$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->d:Ljava/lang/String;

    .line 165
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/mopub/mobileads/AdRequestStatusMapping$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/mopub/mobileads/AdRequestStatusMapping$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 169
    if-nez p1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v1

    .line 173
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v0

    .line 174
    goto :goto_0

    .line 177
    :cond_2
    instance-of v2, p1, Lcom/mopub/mobileads/AdRequestStatusMapping$a;

    if-eqz v2, :cond_0

    .line 181
    check-cast p1, Lcom/mopub/mobileads/AdRequestStatusMapping$a;

    .line 183
    iget-object v2, p0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->a:Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    iget-object v3, p1, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->a:Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/AdRequestStatusMapping$b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 191
    .line 192
    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->a:Lcom/mopub/mobileads/AdRequestStatusMapping$b;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdRequestStatusMapping$b;->ordinal()I

    move-result v0

    add-int/lit16 v0, v0, 0x383

    .line 193
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 196
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 199
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/mopub/mobileads/AdRequestStatusMapping$a;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 202
    return v0

    :cond_1
    move v0, v1

    .line 193
    goto :goto_0

    :cond_2
    move v0, v1

    .line 196
    goto :goto_1
.end method
