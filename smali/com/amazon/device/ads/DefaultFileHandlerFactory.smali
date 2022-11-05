.class Lcom/amazon/device/ads/DefaultFileHandlerFactory;
.super Ljava/lang/Object;
.source "FileHandlerFactory.java"

# interfaces
.implements Lcom/amazon/device/ads/FileHandlerFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFileInputHandler(Ljava/io/File;)Lcom/amazon/device/ads/FileInputHandler;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/amazon/device/ads/FileInputHandler;

    invoke-direct {v0}, Lcom/amazon/device/ads/FileInputHandler;-><init>()V

    .line 84
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/FileInputHandler;->setFile(Ljava/io/File;)Z

    .line 85
    return-object v0
.end method

.method public createFileInputHandler(Ljava/io/File;Ljava/lang/String;)Lcom/amazon/device/ads/FileInputHandler;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/amazon/device/ads/FileInputHandler;

    invoke-direct {v0}, Lcom/amazon/device/ads/FileInputHandler;-><init>()V

    .line 64
    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/FileInputHandler;->setFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 65
    return-object v0
.end method

.method public createFileInputHandler(Ljava/lang/String;)Lcom/amazon/device/ads/FileInputHandler;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/amazon/device/ads/FileInputHandler;

    invoke-direct {v0}, Lcom/amazon/device/ads/FileInputHandler;-><init>()V

    .line 74
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/FileInputHandler;->setFile(Ljava/lang/String;)Z

    .line 75
    return-object v0
.end method

.method public createFileOutputHandler(Ljava/io/File;)Lcom/amazon/device/ads/FileOutputHandler;
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/amazon/device/ads/FileOutputHandler;

    invoke-direct {v0}, Lcom/amazon/device/ads/FileOutputHandler;-><init>()V

    .line 115
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/FileOutputHandler;->setFile(Ljava/io/File;)Z

    .line 116
    return-object v0
.end method

.method public createFileOutputHandler(Ljava/io/File;Ljava/lang/String;)Lcom/amazon/device/ads/FileOutputHandler;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/amazon/device/ads/FileOutputHandler;

    invoke-direct {v0}, Lcom/amazon/device/ads/FileOutputHandler;-><init>()V

    .line 95
    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/FileOutputHandler;->setFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 96
    return-object v0
.end method

.method public createFileOutputHandler(Ljava/lang/String;)Lcom/amazon/device/ads/FileOutputHandler;
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/amazon/device/ads/FileOutputHandler;

    invoke-direct {v0}, Lcom/amazon/device/ads/FileOutputHandler;-><init>()V

    .line 105
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/FileOutputHandler;->setFile(Ljava/lang/String;)Z

    .line 106
    return-object v0
.end method
