.class Lcom/smartadserver/android/library/ui/a$c;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/smartadserver/android/library/ui/a$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method private constructor <init>(Lcom/smartadserver/android/library/ui/a;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$c;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput p2, p0, Lcom/smartadserver/android/library/ui/a$c;->b:I

    .line 157
    iput-object p3, p0, Lcom/smartadserver/android/library/ui/a$c;->c:Ljava/lang/String;

    .line 158
    iput p4, p0, Lcom/smartadserver/android/library/ui/a$c;->d:I

    .line 159
    return-void
.end method

.method synthetic constructor <init>(Lcom/smartadserver/android/library/ui/a;ILjava/lang/String;ILcom/smartadserver/android/library/ui/a$1;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smartadserver/android/library/ui/a$c;-><init>(Lcom/smartadserver/android/library/ui/a;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic b(Lcom/smartadserver/android/library/ui/a$c;)I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/smartadserver/android/library/ui/a$c;->b:I

    return v0
.end method

.method static synthetic c(Lcom/smartadserver/android/library/ui/a$c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$c;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/smartadserver/android/library/ui/a$c;)I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/smartadserver/android/library/ui/a$c;->d:I

    return v0
.end method


# virtual methods
.method public a(Lcom/smartadserver/android/library/ui/a$c;)I
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Lcom/smartadserver/android/library/ui/a$c;->b:I

    iget v1, p1, Lcom/smartadserver/android/library/ui/a$c;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 150
    check-cast p1, Lcom/smartadserver/android/library/ui/a$c;

    invoke-virtual {p0, p1}, Lcom/smartadserver/android/library/ui/a$c;->a(Lcom/smartadserver/android/library/ui/a$c;)I

    move-result v0

    return v0
.end method
