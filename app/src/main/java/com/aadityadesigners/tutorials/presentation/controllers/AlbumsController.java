package com.aadityadesigners.tutorials.presentation.controllers;

import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternResolver;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import org.apache.commons.io.IOUtils;

@RestController
@RequestMapping("/api/albums")
public class AlbumsController {

  @GetMapping
  public ResponseEntity<List<String>> getJpegFiles() throws IOException {
    List<String> jpegFilesBase64 = new ArrayList<>();
    ResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
    Resource[] resources = resolver.getResources("classpath*:storage/albums/*.jpeg");

    for (Resource res : resources) {
      try (InputStream in = res.getInputStream()) {
        byte[] fileBytes = IOUtils.toByteArray(in); // Using Apache Commons IO
        String base64Encoded = Base64.getEncoder().encodeToString(fileBytes);
        jpegFilesBase64.add(base64Encoded);
      } catch (IOException e) {
        e.printStackTrace();
      }
    }

    return ResponseEntity.ok(jpegFilesBase64);
  }

}
