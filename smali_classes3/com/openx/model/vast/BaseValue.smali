.class public Lcom/openx/model/vast/BaseValue;
.super Lcom/openx/model/vast/VASTParserBase;
.source "BaseValue.java"


# static fields
.field private static final serialVersionUID:J = -0xe26f0946ddb0222L


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/openx/model/vast/VASTParserBase;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Lcom/openx/model/vast/BaseValue;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/model/vast/BaseValue;->value:Ljava/lang/String;

    .line 18
    return-void
.end method
